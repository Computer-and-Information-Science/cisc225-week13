# Sum 0.1 Ten Times (sum10x.asm)

Using a loop, find the sum of 0.1 added ten times and output that sum with 10 decimal places of precision. Next, determine if that sum is greater than, less than, or equal to 1.0, and output a message accordingly.

Here is the equivalent program in c++:

```C++
#include <iostream>
#include <iomanip>
using namespace std;

int main () {
	cout << fixed << setprecision(10);
	double sum = 0;
	for (int i = 0; i < 10; i++)
		sum += 0.1;
	cout << "Sum 0.1 ten times = " << sum << "\n";
	if (sum < 1.0)
		cout << "Sum < 1.0\n";
	else if (sum > 1.0)
		cout << "Sum > 1.0\n";
	else
		cout << "Sum == 1.0\n";
}
```

# Unpacked Decimal Addition (unpacked-add.asm)

Calculate the sum of two unpacked decimal numbers with 12 digits of precision.
