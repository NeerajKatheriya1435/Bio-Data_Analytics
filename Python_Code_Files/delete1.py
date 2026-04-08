# 1. Write a program to check whether a number is an Armstrong number.

# num1=8209
# num2=num1
# count=0

# while(num1>0):
#     num1//=10
#     count+=1
# sum=0
# num3=num2
# while(num2>0):
#     lastDigit=num2%10
#     sum=lastDigit**count+sum
#     num2//=10

# if(num3==sum):
#     print("It is armstrong")
# else:
#     print("It is not armstrong")

# 2. Write a program to check whether a number is a Palindrome number.

# var1=121
# var2=var1
# rev=0
# while(var1>0):
#     last=var1%10
#     rev=rev*10+last
#     var1//=10

# 4. Write a program to check whether a number is a Strong number.

# print(rev)
# import math
# var1=146
# var2=var1
# rev=0
# while(var1>0):
#     last=var1%10
#     rev=math.factorial(last)+rev
#     var1//=10

# print(rev)


# 5. Write a program to check whether a number is a Perfect number.

# num1=29
# num2=0
# for i in range(1,num1):
#     if(num1%i==0):
#         num2+=i

# print(num2)

# 6. Write a program to print all Armstrong numbers between 1 and 1000.

# def checkArm(newNum):
#     for i in range(newNum+1):
#         num1=i
#         num2=num1
#         count=0

#         while(num1>0):
#             num1//=10
#             count+=1
#         sum=0
#         num3=num2
#         while(num2>0):
#             lastDigit=num2%10
#             sum=lastDigit**count+sum
#             num2//=10
#         if(num3==sum):
#             print(i)

# checkArm(15512)

# 8. Write a program to find the largest digit in a number.

# var=1274

# digit=0

# while(var>0):
#     last=var%10
#     if(digit<last):
#         digit=last
#     var//=10

# print(digit)

# 11. Write a program to check whether a number is prime.

# def checkPrime(num):
#     prime=True
#     for i in range(2,num):
#         if(num%i==0):
#             prime=False
#     return prime

# print(checkPrime(24))

# 12. Print all prime numbers between 1 and 100.

# def checkPrime(num):
#     prime=True
#     for i in range(2,num):
#         if(num%i==0):
#             prime=False
#     return prime

# for i in range(1,100):
#     if(checkPrime(i)==True):
#         print(i)

# n = int(input("Kitne terms chahiye: "))

# a, b = 0, 1

# for i in range(n):
#     print(a, end=" ")
#     a, b = b, a + b


# a = int(input("Enter first number: "))
# b = int(input("Enter second number: "))

# # GCD
# x, y = a, b
# while y != 0:
#     x, y = y, x % y

# gcd = x
# print(gcd)
# for i in range(0):
#     print(i)

# num1=5
# for i in range(num1):
#     for j in range(i+1):
#         print("*",end="")
#     print()

# num1=5

# for i in range(num1):
#     for j in range(num1-i-1,-1,-1):
#         print("*",end="")
#     print()

# num1=5
# for i in range(num1):
#     for j in range(num1-i-1):
#         print(" ",end="")
#     for k in range((2*i)+1):
#         print("*",end="")
#     print()

# num1=6
# for i in range(num1):
#     for j in range(num1):
#         if(i==0 or j==0 or i==num1-1 or j==num1-1):
#             print("*",end="")
#         else:
#             print(" ",end="")
#     print()

# n = int(input("Enter number of rows: "))

# for i in range(n):
#     num = 1
#     for k in range(n-i-1):
#         print(" ",end="")
#     for j in range(i + 1):
#         print(num, end=" ")
#         num = num * (i - j) // (j + 1)
#     print()

# num1=6

# for i in range(num1):
#     value=1
#     # for k in range(num1-i-1):
#     #     print(" ",end="")
#     for j in range(i+1):
#         print(value)
#         value=value*(i-j)//(j+1)
#     print()

# num1=4
# val=1
# for i in range(num1):
#     for k in range(num1-i-1):
#         print(" ",end="")
#     for j in range(i+1):
#         print(j,end=" ")
#         val+=1
#     print()

# n = 4

# Upper part
# for i in range(1, n+1):
#     print(" "*(n-i) + "*"*(2*i-1))

# # Lower part
# for i in range(n-1, 0, -1):
#     print(" "*(n-i) + "*"*(2*i-1))

# for i in range(n):
#     print(" "*(n-i)+"*"*(2*i-1))

# for j in range(n,0,-1):
#     print(" "*(n-j)+"*"*(2*j-1))

# n = 4

# # Upper part
# for i in range(n):
#     for j in range(n-i-1,-1,-1):
#         print(" ",end="")
#     for k in range(i*2+1):
#         if(k==0 or k==n-1 or k==2*i):
#             print("*",end="")
#         else:
#             print(" ",end="")
#     print()

# n = 4

# for i in range(1, n+1):
#     print(" "*(n-i), end="")
    
#     for j in range(1, 2*i):
#         if j == 1 or j == 2*i-1 or i == n:
#             print("*", end="")
#         else:
#             print(" ", end="")
    
#     print()

# rev=""
# str1="hello"
# for item in str1:
#     rev=item+rev
# print(rev)

# str1="Hello"
# str2="lolHe"
# freq={}

# for i in str1:
#     if i in freq:
#         freq[i]+=1
#     else:
#         freq[i]=1

# for i in str2:
#     if i in freq:
#         freq[i]-=1
#     else:
#         print("Not AN")
#         break

# for item in freq.values():
#     if item!=0:
#         print("Not AN")
#         break
# else:
#     print("Anagram")

# print(freq)

# s = "programming"
# result = ""

# for ch in s:
#     if ch not in result:
#         result += ch

# print(result)

while True:
    inp1=input("Enter the text")
    if(inp1=="quit"):
        break
    else:
        print(inp1)
    