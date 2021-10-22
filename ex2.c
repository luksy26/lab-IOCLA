#include <stdio.h>
#include <string.h>
#include <stdlib.h>


char* delete_first(char *s, char *pattern)
{
	int i, j, l, k, ok; 
	char a[100];
	strcpy(a, s);
	char b[100];
	char *s_final;
	strcpy(b, pattern);
	l = strlen(a);
	k = strlen(b);
	for(i = 0; i < l; i++) 
	{
		ok = 1;
		for(j = 0; j < k; j++) 
		{
			if(a[i + j] != b[j]) 
			{
				ok = 0;
				break;
			}
		}
		if(ok == 1)
		{
			for(j = i; j <= l - k; j++) 
				a[j] = a[j + k];
			
			break;
		
		}
	}
	
	strcpy(s_final, a);
	return s_final; 
	
}


int main(){
	char *s = "Ana are mere";
	char *pattern = "re";

	// Decomentati linia dupa ce ati implementat functia delete_first.
	 printf("%s\n", delete_first(s, pattern));

	return 0;
}
