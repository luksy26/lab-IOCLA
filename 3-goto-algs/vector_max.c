#include <stdio.h>

void main(void)
{
	int v[] = {4, 1, 2, -17, 15, 22, 6, 2};
	int max;
	int i;

	/* TODO: Implement finding the maximum value in the vector */
	max = v[0];
	i = 1;
	int n = sizeof(v) / sizeof(int);

iterare:

	if (i >= n)
		goto afisare;

	if (v[i] > max)
		max = v[i];
	++i;
	goto iterare;

afisare:
	printf("maximul este %d\n", max);
}
