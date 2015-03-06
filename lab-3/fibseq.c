#include <stdio.h>

extern int fibonacci(int x);
extern int fib(int x);
int (*fib_func)(int)=fibonacci;

int main(int argc, char **argv)
{
	int number=0;
	int result=0;

	scanf("%d",&number);
	result = fib_func(number);
	printf("The fibonacci sequence at %d is: %d\n", number, result);

	return 0;
}

