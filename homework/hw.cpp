#include <iostream>
#include <windows.h>
#include <iomanip>
#include <fcntl.h>
#include <io.h>
using namespace std;

// =======================================================================================================================
// PART I
// task 1
int RaiseToPower(int x, int y)
{
	int result = 1;
	for (int i = 0; i < y; ++i) {
		result *= x;
	}
	return result;
}

// task 2
int ReturnRangeSum(int a, int b)
{
	int res = 0;
	for (int i = a; i <= b; i++)
	{
		res += i;
	}
	return res;
}

// task 3
int ReturnPerfectNumbers(int c, int d)
{
	int count = 0;
	for (int i = c; i <= d; i++)
	{
		int sum = 0;
		for (int j = 1; j < i; j++)
		{
			if (i % j == 0)
				sum += j;
		}
		if (sum == i)
		{
			cout << i << " is a perfect number!" << endl;
			count++;
		}
	}
	return count;
}

// task 4
void PrintTheCard(char symbol, char suit)
{
	string suitIcon;
	string cardName(1, symbol);
	switch (suit) {
	case 'H': suitIcon = "H"; break;
	case 'D': suitIcon = "D"; break;
	case 'C': suitIcon = "C"; break;
	case 'S': suitIcon = "S"; break;
	default: suitIcon = "?"; break;
	}

	// Handle 10 (since it's two characters)
	if (symbol == 'T') cardName = "10";

	cout << "+---------+" << endl;
	cout << "| " << cardName;
	if (cardName.length() == 1) cout << "       |";
	else cout << "      |";
	cout << endl;
	cout << "|         |" << endl;
	cout << "|    " << suitIcon << "    |" << endl;
	cout << "|         |" << endl;
	cout << "|";
	if (cardName.length() == 1) cout << "       " << cardName << " |";
	else cout << "      " << cardName << "|";
	cout << endl;
	cout << "+---------+" << endl;
}

int CheckIfNumberLucky(int e)
{
	int d1 = e / 100000 % 10;
	int d2 = e / 10000 % 10;
	int d3 = e / 1000 % 10;
	int d4 = e / 100 % 10;
	int d5 = e / 10 % 10;
	int d6 = e % 10;

	int firstSum = d1 + d2 + d3;
	int lastSum = d4 + d5 + d6;

	return firstSum == lastSum;
}

// PART II
// task 1
int LinearSearch(int arr[], int n, int key) {
	for (int i = 0; i < n; i++) {
		if (arr[i] == key)
			return i;
	}
	return -1;
}

// task 2
int BinarySearch(int arr[], int n, int key) {
	int low = 0, high = n - 1;
	while (low <= high) {
		int mid = (low + high) / 2;
		if (arr[mid] == key)
			return mid;
		else if (key < arr[mid])
			high = mid - 1;
		else
			low = mid + 1;
	}
	return -1;
}

int BinaryToDecimal(string binary) {
	int decimal = 0;
	int power = 1;

	for (int i = binary.length() - 1; i >= 0; i--) {
		if (binary[i] == '1')
			decimal += power;
		power *= 2;
	}
	return decimal;
}

// =======================================================================================================================
int main() 
{
	SetConsoleOutputCP(65001);
	SetConsoleCP(65001);

	// PART 1
	// task 1
	int x, y;
	cout << "Enter base (x) >>> ";
	cin >> x;
	cout << "Enter exponent (y) >>> ";
	cin >> y;
	cout << x << " to the power of " << y << " is " << RaiseToPower(x, y) << endl;

	// task 2
	int a, b;
	cout << "\nEnter a start (a) >>> ";
	cin >> a;
	cout << "Enter an end (b) >>> ";
	cin >> b;
	cout << "The sum of numbers in range from " << a << " to " << b << " (included) is " << ReturnRangeSum(a, b) << endl;

	// task 3
	int c, d;
	cout << "\nEnter interval (c d) >>> ";
	cin >> c >> d;
	cout << "\nTotal perfect numbers found: " << ReturnPerfectNumbers(c, d) << endl;

	// task 4
	string r, s;
	cout << "Enter the rank and the suit of the card (e.g. A H) >>> ";
	cin >> r >> s;
	PrintTheCard(r[0], s[0]);

	// task 5
	int e;
	cout << "Enter a 6-digit numbah >>> ";
	cin >> e;
	if (CheckIfNumberLucky(e))
	{
		cout << "Number " << e << " is lucky!";
	}
	else
	{
		cout << "Unlucky lol (" << e << ")";
	}

	// PART II
	// task 1 & 2
	int arr[] = { 2, 4, 6, 8, 10 };
	int n = 5;
	int key = 6;
	cout << "In the pre-set array, I found " << key << " on index " << LinearSearch(arr, n, key) << " using linear search." << endl;
	cout << "In the pre-set array, I found " << key << " on index " << BinarySearch(arr, n, key) << " using binary search." << endl;
	// task 3
	string bin;
	cout << "Enter a binary number: ";
	cin >> bin;
	int dec = BinaryToDecimal(bin);
	cout << "Decimal: " << dec << endl;
}
