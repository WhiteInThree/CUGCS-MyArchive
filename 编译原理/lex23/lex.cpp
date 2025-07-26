#include<iostream>
using namespace std;
void main()
{
	clear all;
	close all;
	clc;
	m = 20;
	G = 200;
	Rho = 0.9;
	P0 = 0.2;
	XMAX = 5;
	XMIN = -5;
	YMAX = 5;
	YMIN = -5;

	for i = 1:m
		X(i, 1) = (XMIN + (XMAX - XMIN) * rand);
		X(i, 2) = (YMIN + (YMAX - YMIN) * rand);
		Tau(i) = func(X(i, 1), X(i, 2));
	end
	step = 0.1;
	for NC = 1:G
		lamda = 1 / NC;
		[Tau best, BestIndex] = min(Tau);

		for i = 1:m
			P(NC, i) = (Tau(BestIndex) - Tau(i)) / Tau(BestIndex);
		end

		for i = 1:m

			if P(NC, i) < PO
				temp1 = X(i, 1) + (2 * rand - 1) * step * lamda;
				temp2 = X(i, 2) + (2 * rand - 1) * step * lamda;
			else

				temp1 = X(i, 1) + (XMAX - XMIN) * (rand - 0.5);
				temp2 = X(i, 2) + (YMAX - YMIN) * (rand - 0.5);
			end

			if temp1 < XMIN
			   temp1 = XMIN;
			end
			if temp1 > XMAX
			   temp1 = XMAX;
			end
			if temp2 < YMIN
			   temp2 = YMIN;
			end
			if temp2 > YMAX
			   temp2 = YMAX;
			end

			if func(temp1, temp2) < func(X(i, 1), X(i, 2))
			   X(i, 1) = temp1;
			   X(i, 2) = temp2;
			end
		end

		for i = 1:m
			Tau(i) = (1 - Rho) * Tau(i) + func(X(i, 1), X(i, 2));
		end
		[value, index] = min(Tau);
		trace(NC) = func(X(index, 1), X(index, 2));
	end
	[min_value, min_index] = min(Tau);
	minX = X(min_index, 1);
	minY = X(min_index, 2);
	minValue = func(X(min_index, 1),X(min_index, 2));

	function value = func(x, y)
	value = 20 * (x ^ 2 - y ^ 2) ^ 2 - (1 - y) ^ 2 - 3 * (1 + y) ^ 2 + 0.3
}