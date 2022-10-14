/*
** EPITECH PROJECT, 2020
** my_put_nbr.c
** File description:
** task01
*/

void my_putchar(char c);

int my_put_nbr(int nb)
{
    if (nb < 0) {
        my_putchar('-');
        nb = -nb;
    }
    if (nb >= 10) {
        my_put_nbr(nb / 10);
        my_putchar(nb / 10 + '0');
    }
    if (nb < 10)
        my_putchar(nb + '0');
    return (0);
}
