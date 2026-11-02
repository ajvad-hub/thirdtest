# n=int(input("enter number of rows: "))
# num=[]
# for i in range(n):
#     a=[1]
#     for j in range(1,i):
#         x=num[i-1][j-1]+num[i-1][j]
#         a.append(x)

#     if i>0:
#         a.append(1)
#     num.append(a)

# for i in range(n):
#     print(" " * (n-i),end="")

#     for j in num[i]:
#         print(j, end=" ")
#     print()
#     b=[1]
#     for j in range(len(a)-1):
#         b.append(a[j]+a[j+1])
#     b.append(1)
#     a=b





# s=input("Enter a string: ")
# l=0
# r=len(s)-1

# while l < r:
#     if s[l] != s[r]:
#         print("not a palindrome")
#         break
#     l +=1
#     r -=1
# else:
#     print("pallindrome")





s=input("Enter a string: ")
s=s.lower()
f={}
for n in s:
    if n.isalpha():
        if n in f:
            f[n] += 1
        else:
            f[n] = 1

for n in sorted(f):
    print(n,":", f[n])




















