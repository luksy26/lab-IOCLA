#include <stdio.h>

//unsigned int get_max(unsigned int *arr, unsigned int len);

unsigned int get_max(unsigned int *arr, unsigned int len, unsigned int *pos);

int main(void)
{
	unsigned int arr[] = { 19, 7, 129, 87, 54, 218, 67, 12, 19, 99 };
	unsigned int max;

	//max = get_max(arr, 10);

	//printf("max: %u\n", max);

	unsigned int pos = 0;//start from position 0

	max = get_max(arr, 10, &pos);

	printf("max: %u\non position: %d\n", max, pos - 1);

	return 0;
}
