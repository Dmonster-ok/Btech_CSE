#include <stdio.h>
#include <stdlib.h>
#include <time.h>

void bubble(int arr[], int size)
{
	int swapped = 0;
	for (int i = 0; i < size - 1; i++)
	{
		for (int j = 0; j < size - i - 1; j++)
		{
			if (arr[j] > arr[j + 1])
			{
				int tmp = arr[j];
				arr[j] = arr[j + 1];
				arr[j + 1] = tmp;
				swapped = 1;
			}
		}
		if (swapped == 0)
			break;
	}
	printf("\nSorted: \n");
	for (int i = 0; i < size; i++)
	{
		printf("%d ", arr[i]);
	}
}

void insertion(int arr[], int size)
{
	for (int i = 0; i < size; i++)
	{
		int key = arr[i];
		int j = i - 1;
		while (j >= 0 && arr[j] > key)
		{
			arr[j + 1] = arr[j];
			j -= 1;
		}
		arr[j + 1] = key;
	}
	printf("\nSorted: \n");
	for (int i = 0; i < size; i++)
	{
		printf("%d ", arr[i]);
	}
}

void createFile()
{
	FILE *best;
	FILE *avrage;
	FILE *worst;
	best = fopen("best.txt", "w");
	avrage = fopen("avrage.txt", "w");
	worst = fopen("worst.txt", "w");
	int size = 1000000;
	for (int i = 1; i <= size; i++)
	{
		fprintf(best, "%d ", i);
		fprintf(avrage, "%d ", rand());
		fprintf(worst, "%d ", size - i + 1);
	}
	fclose(best);
	fclose(avrage);
	fclose(worst);
}

void sorting(void (*cb)(int *, int), int arr[], int size)
{
	clock_t start,end;
	double time_spent;

	start = clock();
	(*cb)(arr, size);
	end = clock();
	time_spent = ((double)end - start) / CLOCKS_PER_SEC;
	printf("\nTime consumed %f s",time_spent);
}

void main()
{
	void (*sortFunc)() = &insertion;
	int arr[] = {5, 4, 3, 2, 1};
	sorting(sortFunc, arr, 5);
}