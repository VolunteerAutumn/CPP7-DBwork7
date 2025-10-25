#include <iostream>
#include <iomanip>
using namespace std;

// PART I 

// task 1
void PrintDaRectangle(int n, int k)
{
    for (int i = 0; i < n; i++)
    {
        for (int j = 0; j < k; j++)
        {
            cout << setw(3) << "#";
        }
        cout << endl;
    }
}

// task 2
int Factorial(int a)
{
    int res = 1;
    for (int i = 1; i <= a; i++)
        res *= i;
    return res;
}

// task 3
bool CheckThePrimity(int b)
{
    if (b <= 1) return false;
    for (int i = 2; i * i <= b; i++)
    {
        if (b % i == 0)
            return false;
    }
    return true;
}

// task 4
int Cube(int c)
{
    return c * c * c;
}

// task 5
int Max(int d, int e)
{
    return (d > e ? d : e);
}

// task 6
bool BiggerThan0(int f)
{
    return f > 0;
}

// PART II 

// task 1
void MinMax(int tuple[], int len, int& min, int& max)
{
    max = tuple[0];
    min = tuple[0];
    for (int i = 0; i < len; i++)
    {
        if (tuple[i] > max) max = tuple[i];
        if (tuple[i] < min) min = tuple[i];
    }
}

// task 2
void ReverseAnArray(int arr[], int size)
{
    for (int i = 0; i < size / 2; i++)
    {
        int temp = arr[i];
        arr[i] = arr[size - i - 1];
        arr[size - i - 1] = temp;
    }
}

// task 3
int CountPrimes(int arr[], int size)
{
    int primecount = 0;
    for (int i = 0; i < size; i++)
    {
        if (CheckThePrimity(arr[i]))
            primecount++;
    }
    return primecount;
}

// MAIN
int main()
{
    // PART I
    // task 1
    int n, k;
    cout << "Enter the height >>> ";
    cin >> n;
    cout << "Enter the width >>> ";
    cin >> k;
    PrintDaRectangle(n, k);

    // task 2
    int a;
    cout << "Enter the number >>> ";
    cin >> a;
    cout << "Factorial of this number is : " << Factorial(a) << endl;

    // task 3
    int b;
    cout << "Enter the number >>> ";
    cin >> b;
    if (CheckThePrimity(b))
        cout << "The number " << b << " is prime!" << endl;
    else
        cout << "The number " << b << " is NOT prime!" << endl;

    // task 4
    int c;
    cout << "Enter the number >>> ";
    cin >> c;
    cout << "The cube of " << c << " is " << Cube(c) << "!" << endl;

    // task 5
    int d, e;
    cout << "Enter the number >>> ";
    cin >> d;
    cout << "Enter another number >>> ";
    cin >> e;
    cout << "The bigger number among " << d << " and " << e << " is " << Max(d, e) << "!" << endl;

    // task 6
    int f;
    cout << "Enter the number >>> ";
    cin >> f;
    if (BiggerThan0(f))
        cout << "The number " << f << " is bigger than 0!" << endl;
    else
        cout << "The number " << f << " is smaller than or equal to 0!" << endl;

    // PART II
    // task 1
    const int len = 10;
    int tuple[len] = { 3, 4, 5, 6, 7, 8, 9, 10, 11, 17345 };
    int big, smol;
    MinMax(tuple, len, smol, big);
    cout << "Largest number is " << big << " while smallest is " << smol << "!" << endl;

    // task 2
    const int len1 = 12;
    int arr[len1] = { 3, 4, 5, 6, 7, 8, 9, 10, 11, 17345, 19, 77 };
    ReverseAnArray(arr, len1);
    cout << "Reversed array: { ";
    for (int i = 0; i < len1; i++)
        cout << arr[i] << " ";
    cout << "}" << endl;

    // task 3
    cout << "Number of primes in array: " << CountPrimes(arr, len1) << endl;

    return 0;
}
