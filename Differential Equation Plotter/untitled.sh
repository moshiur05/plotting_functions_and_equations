printf "dy/dx = "
read fn
printf "Enter initial value for x : "
read x0
printf "Enter initial value for y : "
read y0
printf "Enter final value of x : "
read x1
printf "Enter step size : "
read h
printf "Enter number of points to plot : "
read n
echo "#include <stdio.h>
#include <math.h>

#define f(x,y)	$fn
#define x0		$x0
#define y0		$y0
#define x1		$x1
#define h		$h
#define n		$n

int main()
{
	long double x = x0, y = y0, i = 1, k = (x1 - x0)/n;

	printf(\"%llf\n\", x);
	printf(\"%llf\n\", y);

	while (x <= x1)
	{
		y = y + (f(x,y))*h;
		x = x + h;

		if (x >= i*k + x0 - h)
		{
			printf(\"%llf\n\", x);
			printf(\"%llf\n\", y);
			i = i + 1;
		}
	}

	printf(\"end\");
	
	return 0;
}" > newfile.c
echo Please wait while calculations are being done.....
gcc newfile.c -lm
./a.out | python untitled.py