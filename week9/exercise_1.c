#include <stdio.h>
#include <limits.h>
#include <stdlib.h>

int frames_number;

int *frames_addresses;
int *frames_age;

int reference(int virtual_address)
{
    // aging
    for (int i = 0; i < frames_number; i++)
    {
        if (frames_age[i] != INT_MAX)
        {
            frames_age[i]++;
        }
    }

    // if page found in table
    for (int i = 0; i < frames_number; i++)
    {
        if (frames_addresses[i] == virtual_address)
        {
            frames_age[i] = 0;
            // hitrate
            return 0;
        }
    }

    int oldest_page_index = 0;
    int oldest_page_age = 0;

    for (int i = 0; i < frames_number; i++)
    {
        if (frames_age[i] > oldest_page_age)
        {
            oldest_page_age = frames_age[i];
            oldest_page_index = i;
        }
    }

    frames_addresses[oldest_page_index] = virtual_address;
    frames_age[oldest_page_index] = 0;

    // missrate
    return 1;
}

void initialize()
{
    frames_addresses = malloc(sizeof(int) * frames_number);
    frames_age = malloc(sizeof(int) * frames_number);

    for (int i = 0; i < frames_number; i++)
    {
        frames_addresses[i] = -1;
        frames_age[i] = INT_MAX;
    }
}

int calculate()
{
    initialize();

    printf("Number of page frames: %d\n", frames_number);

    FILE *file = fopen("input.txt", "r");

    char c_value = ' ';
    int i_value = 0;

    int hitrates = 0;
    int missrates = 0;

    for (int i = 0; i < 3882; i++)
    {
        c_value = fgetc(file);
        if (c_value < '0' || c_value > '9')
        {
            int result = reference(i_value);

            if (result == 0)
            {
                hitrates++;
            }
            else
            {
                missrates++;
            }

            i_value = 0;
        }
        else
        {
            i_value *= 10;
            i_value += c_value - '0';
        }
    }

    fclose(file);

    printf("Hitrates: %d\n", hitrates);
    printf("Missrates: %d\n", missrates);

    return 0;
}

int main()
{
    frames_number = 10;
    calculate();
    frames_number = 50;
    calculate();
    frames_number = 100;
    calculate();
}