#include <stdio.h>

void main(void)
{
	int v[] = {1, 2, 15, 51, 53, 66, 202, 7000};
	int dest = v[2]; /* 15 */
	int start = 0;
	int end = sizeof(v) / sizeof(int) - 1;

	int mij = (start + end) / 2;

verificare:

	if (start > end)
		goto afisare2;

	if (v[mij] == dest)
		goto afisare1;

	if (v[mij] < dest)
		goto jumatatea2;

	if (v[mij] > dest)
		goto jumatatea1;

jumatatea1:
	end = mij - 1;
	mij = (start + end) / 2;
	goto verificare;

jumatatea2:
	start = mij + 1;
	mij = (start + end) / 2;
	goto verificare;

afisare1:
	printf("da, exista\n");
	return;

afisare2:
	printf("nu, nu\n");
	return;

}
