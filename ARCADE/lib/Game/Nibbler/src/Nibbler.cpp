/*
** EPITECH PROJECT, 2022
** Nibbler.cpp
** File description:
** TODO
*/

#include "Nibbler.hpp"

extern "C" Arcade::Nibbler *Arcade::entry_point()
{
    return new Arcade::Nibbler;
}

Arcade::Nibbler::Nibbler() : position(5, 5), Direction(ARROW_LEFT), LastDirection(Direction),
    Score(0), Size(3), Height(0), Width(0),
    Speed(500), Clock(NOW), CanMove(true), Eating(false),
    RandomEngine(std::default_random_engine(RandomDevice()))
{
    std::fstream WallsFile("contents/Nibbler/Nibbler.txt");
    std::string Line;
    while (std::getline(WallsFile, Line)) {
        if (!Width)
            Width = int (Line.length());
        for (int x = 0; x < int (Line.size()); x++) {
            if (Line[x] == WALL) {
                Walls.push_back(std::make_shared<Tile>("contents/Nibbler/wall.png", "█", 53, x, Height));
                MapObjects.emplace(std::make_pair(x, Height), WALL);
            }
        }
        Height++;
    }
    SnakeHead = std::make_shared<Tile>("contents/Nibbler/head.png", "◼", 10, position.first, position.second);
    SnakeHead->setRotation(180);
    Fruit = std::make_shared<Tile>("contents/Nibbler/cherry.png", "•", 47, 1, 1);
    for (int x = 1; x <= Size; x++)
        SnakeBody.push_back(std::make_shared<Tile>("contents/Nibbler/body.png", "◼", 41,position.first + float (x),position.second));
    GameOverText.push_back(std::make_shared<Text>("press R to restart", 10, 0, Height + 1));
    GameOverText.push_back(std::make_shared<Text>("press M for menu", 15, 0, Height + 2));
    ScoreText = std::make_shared<Text>("Score : " + std::to_string(Score), WHITE, 0, Height);
    AddFruit();
}

void Arcade::Nibbler::ResetGame()
{
    Score = 0;
    position = {5, 5};
    Direction = ARROW_LEFT;
    LastDirection = Direction;
    Size = 3;
    Speed = 500;
    Clock = NOW;
    CanMove = true;
    Eating = false;
    SnakeHead->setPosition(position);
    SnakeHead->setRotation(180);
    SnakeBody.clear();
    for (int x = 1; x <= Size; x++)
        SnakeBody.push_back(std::make_shared<Tile>("contents/Nibbler/body.png", "◼", 41,position.first + float (x),position.second));
    AddFruit();
    ScoreText->setText("Score : " + std::to_string(Score));
}

void Arcade::Nibbler::AddFruit()
{
    for (int tries = 0; tries < 1000; tries++) {
        bool InBodyPart = false;
        FruitPos.second = float (int (RandomEngine()) % (Height - 1) + 1);
        FruitPos.first = float (int (RandomEngine()) % (Width - 1) + 1);
        if (MapObjects.find(FruitPos) != MapObjects.end())
            continue;
        if (FruitPos == position)
            continue;
        for (auto &BodyPart : SnakeBody)
            if (FruitPos == BodyPart->getPosition()) {
                InBodyPart = true;
                break;
            }
        if (InBodyPart)
            continue;
        break;
    }
    Fruit->setPosition(FruitPos);
}

 std::vector<Arcade::Object> Arcade::Nibbler::GameLoop(Input input)
{
    std::vector<Object> objects;
    NibblerSounds.clear();
    MoveSnake(input);
    objects.push_back(Fruit);
    objects.push_back(SnakeHead);
    for (auto &Sound: NibblerSounds)
        objects.push_back(Sound);
    for (auto &BodyPart : SnakeBody)
        objects.push_back(BodyPart);
    for (auto &Wall: Walls)
        objects.push_back(Wall);
    if (!CanMove)
        for (auto &Text : GameOverText)
            objects.push_back(Text);
    objects.push_back(ScoreText);
    return objects;
}

void Arcade::Nibbler::MoveSnake(Input input) {
    if (input != Direction) {
        switch (input) {
            case ARROW_LEFT:
                if (LastDirection == ARROW_RIGHT)
                    break;
                Direction = input;
                SnakeHead->setRotation(180);
                break;
            case ARROW_RIGHT:
                if (LastDirection == ARROW_LEFT)
                    break;
                Direction = input;
                SnakeHead->setRotation(0);
                break;
            case ARROW_DOWN:
                if (LastDirection == ARROW_UP)
                    break;
                Direction = input;
                SnakeHead->setRotation(90);
                break;
            case ARROW_UP:
                if (LastDirection == ARROW_DOWN)
                    break;
                Direction = input;
                SnakeHead->setRotation(-90);
                break;
            default:
                break;
        }
    }
    CheckMovement(position);
    auto Elapsed = std::chrono::duration_cast<std::chrono::milliseconds>(NOW - Clock).count();
    if (Speed < Elapsed || (input == SPACE && Elapsed > 140)) {
        Clock = NOW;
        auto BackBodyPosition = position;
        switch (Direction) {
            case ARROW_LEFT:
                position.first -= 1;
                break;
            case ARROW_RIGHT:
                position.first += 1;
                break;
            case ARROW_DOWN:
                position.second += 1;
                break;
            case ARROW_UP:
                position.second -= 1;
                break;
            default:
                break;
        }
        CheckMovement(position);
        if (CanMove) {
            LastDirection = Direction;
            SnakeHead->setPosition(position);
            SnakeBody.push_front(std::make_shared<Tile>("contents/Nibbler/body.png", "◼", 41, BackBodyPosition.first, BackBodyPosition.second));
            if (!Eating)
                SnakeBody.pop_back();
            else {
                Score++;
                ScoreText->setText("Score : " + std::to_string(Score));
                AddFruit();
                NibblerSounds.push_back(std::make_shared<Sound>("contents/Nibbler/munch.mp3"));
            }
            Eating = false;
            if (Speed > 140)
                Speed -= 1;
        }
    }
}

void Arcade::Nibbler:: CheckMovement(Position NewPosition) {
    if (MapObjects.find(NewPosition) != MapObjects.end())
        if (MapObjects[NewPosition] == WALL)
            GameOver();
    if (NewPosition.first < 0 || int (NewPosition.first) >= Width)
        GameOver();
    if (NewPosition.second < 0 || int (NewPosition.second) >= Height)
        GameOver();
    if (NewPosition == FruitPos)
        Eating = true;
    for (auto &BodyPart : SnakeBody)
        if (NewPosition == BodyPart->getPosition())
            GameOver();
}

void Arcade::Nibbler::GameOver() {
    if (CanMove) {
        CanMove = false;
        NibblerSounds.push_back(std::make_shared<Sound>("contents/Nibbler/game_over.mp3"));
    }
}
