#include <stdio.h>
#include <iostream>

int proc1(int z)
{
	return z * (z + 1);
}

int proc2(int z)
{
	return z * z;
}

int f(int(*proc)(int))
{
	return proc(2);
}

void classicC()
{
	int a = f(proc1);
	int b = f(proc2);
	printf("a: %d\n", a);
	printf("b: %d\n", b);
}

void cplusplus11a()
{
	auto f = [] (int(*proc)(int)) 
	{ 
		return proc(2); 
	};

	auto a = f ([] (int z) { return z * (z + 1); });
	auto b = f ([] (int z) { return z * z; });
	std::cout << "a: " << a << "\n";
	std::cout << "b: " << b << "\n";
}

void cplusplus11b()
{
	auto f = [] (int(*proc)(int)) 
	{ 
		return proc(2); 
	};

	auto a = f ([] (int z) 
	{ 
		return [](int a) { return a * (a + 1); }(z); 
	});
	auto b = f ([] (int z) 
	{ 
		return [](int a) { return a * a; }(z); 
	});

	std::cout << "a: " << a << "\n";
	std::cout << "b: " << b << "\n";
}

int main(int argc, char* argv[])
{
	classicC();

	cplusplus11a();

	cplusplus11b();

	return 0;
}
