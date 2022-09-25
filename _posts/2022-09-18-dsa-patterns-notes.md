---
title: DSA Patterns
author: Sanfyin
date: 2022-09-18 00:34:00 +0800
tags: [algorithm]
---

## Maths for coding

### Sieve of Eratosthenes -  to find the Prime Numbers



### Find GCD
gcd(a,b) = gcd(a-b,b)

if a>b

gcd(a,b) = gcd(b,a%b)

def gcd(a,b):

	if b==0:
		return b
	
	return gcd(b, a%b)
	
	
	
public static int gcd(int a, int b)
{
	if(b == 0)
	{
	return a;
	}
	
	return gcd(b, a%b);
}
	

### Fast Power 

```cs

    int res = 1;

    while( b > 0) {
        if((b & 1) != 0)
        {
            res = res * a;
        }
        
        a = a * a;
        b = b >> 1; 
    }

    return res;

```

## Catalan Numbers

1. Program to write Catalan Numbers

dp[0] = 1
dp[1] = 1

for i in range(2,n):
	for j in range(i):
		dp[i] += dp[j]*dp[i-j-1]

Variations:
2. Number of Binary Search Trees.
3. Count of Valleys and Mountains
4. Count of Brackets
5. Dyk Words
6. Maze path above diagonal
7. Circle and Chords
8. Number of ways of Triangulation
9. Minimum score of Triangulation


## 0-1 Knapsack

def knapsack(wt: List[int], val: List[int], int W, int n)->int:
	if n == 0 or W == 0:
		return 0
		
	if wt[n-1] <= W:
		return max(val[n-1] + knapsack(wt,val, W - wt[n-1],n-1), 
					knapsack(wt,val, W, n-1))
	else:
		return knapsack(wt,val, W, n-1)
	

1. Subset Sum
2. Equal Sum Partition
3. Count of Subset Sum
4. Minimum Subset sum difference
5. Target Sum
6. Number of subset with given difference

## Unbounded Knapsack

def knapsack(wt: List[int], val: List[int], int W, int n)->int:
	if n == 0 or W == 0:
		return 0
		
	if wt[n-1] <= W:
		return max(val[n-1] + knapsack(wt,val, W - wt[n-1],n), 
					knapsack(wt,val, W, n-1))
	else:
		return knapsack(wt,val, W, n-1)

1. Rod cutting
2. Coin Change
3. Coin Change 2
4. Maximum Ribbon Cut

## Fibonacci

def fibo(n: int)-> int:
	dp[0] = 0
	dp[1] = 0
	
	for i in range(2,n+1):
		dp[i] = dp[i-1] + dp[i-2]
		
	return dp[n]
	
1. Fibonacci number
2. Climb Stair
3. Climb Stairs With Variable Jump
4. Climb Stairs with Minimum Moves
5. Minimum cost in Maze Path
6. Goldmine

## LCS - Longest Common Subsequence

def lcs(x: str, y: str, n: int, m: int)->int:
	if n == 0 or m == 0:
		return 0
	
	if x[n] == y[m]:
		return 1 + lcs(x, y, n-1, m-1)
	else:
		return max(lcs(x, y, n-1, m),
					lcs(x, y, n, m-1))
	

1. Longest Common Subsequence
2. Largest Common Substring
3. Print LCS
4. Shortest common Superseuence
5. Print SCS
6. Minimum number of insertion or deletion to convert string a to b
7. Length of largest subsequence of a which is a substring in b
8. Subsequence pattern matching
9. Count how many times a appears as subsequence in b
10. Largest Palindromic Subsequence
11. Largest Palindromic Substring
12. Count of Palindromic Substring
13. Minimum number of deletions in a string to make it a Palindrome
14. Minimum number of insertions in a string to make it a Palindrome
15. Largest Repeating Subsequence

## LIS

1. LIS
2. Print all LIS
3. Maxumum sum increasing subsequence
4. Longest Bitonic Subsequence
5. Maximum Non-Overlapping Bridges
6. Russian Doll Envelopes
7. Perfect Squares
8. Highway Billboard problem

## Kadanes's Algorithm

1. Maximum Sum Subarray
2. Maximum consecutive 1

## Matrix Chain Multiplication

def solve(arr: str/List, i: int, j: int)->int:
	if i > j:
		return 0
	
	for k in range(i,j):
		temp = solve(arr, i,k) + solve(arr, k+1,j)
		
		ans = cal(temp, ans)
	
	return ans

1. MCM
2. Printing MCM
3. Evaluate Expression to true / Boolean Parenthesisations
4. Min/ Max value of an Expression
5. Palindromic Partitioning
6. Scramble String
7. Egg Dropping Problem


## DP on Trees

def solve(root: Node)-> int:
	if root is None:
		return 0
	
	l = solve(root.left)
	r = solve(root.right)
	
	temp = calc(l,r)
	
	ans = max/min(temp, ans)
	
	res = max/min(res,ans)
	
	return res

1. Diameter of a Binary tree
2. Maximum Path sum from any node to any
3. Maximum Path sum from Leaf to leaf
4. Diameter of N-array Tree

## DP on Grid


## Count Pattern

def solve(n):
	dp1 = [ 0 for i in range(n+1)]
	dp2 = [ 0 for i in range(n+1)]
	
	dp1[1] = 1
	dp2[1] = 1
	
	for i in range(2, n+1):
		dp2[i] = dp2[i-1] + dp1[i-1]
		dp1[i] = dp2[i-1]
		
	
	return dp1[n] + dp2[n]

1. Count Binary String
2. Arrange Building
3. Decode Ways
4. Count Subsequencees of form A*B*C* Subsequences
5. Maximum Sum Non Adjacent Elements
6. Paint House 3 color
7. Paint House many color
8. Paint Fences
9. Tiling with Dominos
10. Tiling with M*1 Tiles
11. Friends pairing
	f(n) = f(n-1) + (n-1)f(n-2)
	
12. Partition into Subsets
	f(n,k) = k*f(n-1,k) + f(n-1,k-1)


## Buy Sell Shares
1. Best Time to Buy and Sell Stocks - one transaction
	
	lsf = IntMax
	op = 0
	pist = 0
	
	for p in range(len(prices)):
		if prices[p] < lsf:
			lsf = pist
		
		pist = prices[p] - lsf		
		op = max(op, pist)

2.  Best Time to Buy and Sell Stocks - infinite transaction
	
	bp = 0
	sp = 0
	ans = 0
	
	for p in range(1, len(prices)):
		if prices[p] < sp:
			ans += prices[sp] - prices[bp]
		
			bp = p
			sp = p
		else:
			sp += 1
		

3.  Best Time to Buy and Sell Stocks - with transaction fees

	bsp = prices[0]
	ssp = 0
	
	for p in range(1, len(prices)):
		tempbsp = min((prices[p] - ssp), bsp)
		ssp = max((prices[p] - bsp - f), ssp)
		bsp = tempbsp 
		
4. Best Time to Buy and Sell Stocks - infinite transaction with cool down

	bsp = prices[0]
	ssp = 0
	csp = 0
	
	for p in range(1, len(prices)):
		nbsp = min((prices[p] - csp), bsp)
		nssp = max((prices[p] - bsp), ssp)
		ncsp = max(ssp , csp)
		
		bsp = nbsp
		sso = nssp
		csp = ncsp 

5. Best Time to Buy and Sell Stocks - two transaction

6. Best Time to Buy and Sell Stocks - k transaction


## Others
1. Largest Square Sub Matrix

	
	for i in range(n-1, -1,-1):
		 for j in range(m-1, -1, -1):
		 	if i == n-1 or j == m-1 or M[i][j] == 0:
				A[i][j] = M[i][j]
				continue
				
			A[i][j] = 1 + min(A[i][j-1], A[i-1][j], A[i-1][j-1]))
			
			
		
	

### Greedy Algorithm

# Local optimal solution

1. N meetings in one room
2. Maximum meetings in one room
3. Shop in Candy store
4. Check if it is possible to survive on Island
5. Reverse words in a given string
6. Chocolate Distribution Problem
7. Minimum cost of ropes
8. Huffman Coding
9. Fractional Knapsack
10. Job Sequencing Problem

11. Maximum performance of a team - LC1383



### Sliding Windows

1. Maximum Sum Subarray of size K
2. First Negative Number in every Window of Size K

3. Count Unique Characters of All Substrings of a Given String

 	- contribution of a Character = leftWindowCount * rightWindowCount 
	- Create dict<char, List<int>> to hold index of each character
	- ABCAACD - len(str) = 6
	- A -> -1,0,3,4,7
	- left = I[i] - I(i-1)
	- right = I[i+1] - I[i]

4. Maximum Sum Circular Subarray

- find max_sum, min_sum, total_sum
- if total sum = min_sum, return max sum
- else return max(max_sum, total_sum - min_sum)

### Stack
1. Remove K digits | Build lowest number

- remove first peak
-  Use stack, remove if the top of stack is greater than the current element and keep decrementing k
- if stack is empty and current element is 0, skip to next element.
- If k = 0, insert rest of the element in the stack.
- remove element from stack and create the string
- T O(N), S O(N)


### Graph

class Edge:
	def __init__(self):
		self.src
		self.nbr
		self.wt



### Bit Manipulation

0 MSB - covert as it is
1 MSB - 2's complement
4bit signed - -8 to 7
4bit unsigned - 0 to 16

decimal to binary
+ve - fit in bits
-ve - Covert to binary without sign - Fit in bits - 2's complement

on - or
off - and
toggle - xor
check - and



### Binary Search

1. Allocate Minimum Number Of Pages

nums = [10, 20, 30, 40]

if m > len(nums):
	return -1

start = Max(nums)
end = Sum(nums)

res = -1

while start <= end:
	mid = start + (end - start)/2
	
	if isValid(nums,mid,m) == true:
		res = mid
		end = mid - 1
	else:
		start = mid + 1


def isValid(nums, max, m):
	tempM = 1
	sum = 0
	
	for n in nums:
		sum += n
		
		if sum > max:
			tempM++
			
			if(tempM > m):
				return false
			sum  = n
	
	return true
		