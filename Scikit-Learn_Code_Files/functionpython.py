
# str1="ATGCQWRATCGCC"
# str2=""
# pattern=["A","T","G","C"]
# pattern="ATGC"

# value=False

# for i in str1:
#     if i in pattern:
#         str2=str2+i

# print(str2)

# str1="ATGC"

# if "F" in str1:
#     print("Yes Present")
# else:
#     print("Not Present")


# str1="ATGCQWRATCGCC"
str1="ATGCCCGGTTAAATTGGCC"
pattern="ATGC"

valid=True

# for i in str1:
#     if i in pattern:
#         simple="hello"
#     else:
#         valid=False

# for i in str1:
#     if i not in pattern:
#         valid=False

# if(valid):
#     print("Sequence is valid")
# else:
#     print("String is not a sequence")

# def multiNum()

# def greet():
#     print("Hello Good Morning")

# print("Hii how are you")
# greet()
# a=8
# b=4
# print(a+b)
# greet()

# def greet(str1):
#     print("Hello Good Morning",str1)


# greet("Rohan")
# greet("Sunita")
# greet("John")

# def Addtwo(num1,num2):
    # print(num1+num2)
    # vgjk
    # kjj
    # lknkl
    # return num1+num2

# Addtwo(6,8)
# print(Addtwo(4,5))

# print(Addtwo(4,5))



str1="ATGCQWRATCGCC"
# str2="Hello"
# pattern=["A","T","G","C"]
# pattern="ATGC"

# value=False

def removeOther(str1):
    pattern="ATGC"
    str2=""
    for i in str1:
        if i in pattern:
            str2=str2+i
    return str2

# removeOther(str1)
print(removeOther(str1))