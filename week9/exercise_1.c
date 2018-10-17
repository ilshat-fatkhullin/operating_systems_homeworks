#include <stdio.h>
#include <limits.h>

const int SIZE_OF_VIRTUAL_MEMORY = 1000;

int max_frames_number = 100;

int v_pages_priority[1000];

int v_pages_presence[1000];

int frames_number = 0;

int reference(int index)
{
    // decreasing priority
    for (int i = 0; i < SIZE_OF_VIRTUAL_MEMORY; i++)
    {
        v_pages_priority[i]--;
    }

    if (v_pages_presence[index] == 0 && frames_number == max_frames_number)
    {
        int min_priority = INT_MAX;
        int min_priority_index = INT_MAX;
        for (int i = 0; i < 1000; i++)
        {
            if (v_pages_priority[i] < min_priority)
            {
                min_priority = v_pages_priority[i];
                min_priority_index = i;
            }
        }
        v_pages_priority[index] = INT_MAX;
        v_pages_presence[index] = 1;
        //missrate
        return 1;
    }
    else
    {
        if (v_pages_presence[index] == 0)
            frames_number++;
        v_pages_priority[index] = INT_MAX;
        v_pages_presence[index] = 1;
        //hitrate
        return 0;
    }
}

void initialize()
{
    frames_number = 0;
    for (int i = 0; i < SIZE_OF_VIRTUAL_MEMORY; i++)
    {
        v_pages_presence[i] = 0;
        v_pages_priority[i] = 0;
    }
}

int calculate()
{
    initialize();

    printf("Number of page frames: %d\n", max_frames_number);

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
    max_frames_number = 10;
    calculate();
    max_frames_number = 50;
    calculate();
    max_frames_number = 100;
    calculate();
}