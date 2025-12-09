#include <stdio.h>
#include <stdlib.h>

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

void main()
{
	int *arr;
	int size;

	printf("Enter size of array: ");
	scanf("%d", &size);

	arr = (int *)malloc(size * sizeof(int));

	if (arr == NULL)
		printf("Memory not allocated.");
	else
	{
		for (int i = 0; i < size; i++)
		{
			arr[i] = size - i;
		}
		for (int i = 0; i < size; i++)
		{
			printf("%d ", arr[i]);
		}
		insertion(arr, size);
	}
}