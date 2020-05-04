#include <stdio.h>
#include <math.h>

#define f(x,y)	pow(x,y)
#define x0		0
#define y0		1
#define x1		10
#define h		0.000001
#define n		1000

int main()
{
	long double x = x0, y = y0, i = 1, k = (x1 - x0)/n;

	printf("%llf\n", x);
	printf("%llf\n", y);

	while (x <= x1)
	{
		y = y + (f(x,y))*h;
		x = x + h;

		if (x >= i*k + x0 - h)
		{
			printf("%llf\n", x);
			printf("%llf\n", y);
			i = i + 1;
		}
	}

	printf("end");
	
	return 0;
}