
# class Human:
#     def eat(self):
#         print("Human can eat")

#     def run(self):
#         print("Human can run")

# class Employee(Human):
#     def work(self):
#         print("Employee is working")

# class Manager(Employee):
#     def manage(self):
#         print("Manager is managing")

# h1=Human()
# h1.eat()
# h1.run()
# h1.work()

# e1=Employee()

# e1.work()
# e1.eat()
# e1.run()

# m1=Manager()
# m1.eat()
# m1.work()
# m1.manage()

# class Human:
#     def eat(self):
#         print("Human can eat")

#     def run(self):
#         print("Human can run")

# class Teacher(Human):
#     def skill(self):
#         print("Techer can tech is")

# class Programmer(Human):
#     def program(self):
#         print("Programmer can hack you")

# p1=Programmer()
# p1.program()
# p1.eat()

# class Hacker(Teacher,Programmer):
#     def hacker():
#         print("I am anonymous")


# h1=Hacker()
# h1.program()


# class Human:
#     def eat(self):
#         print("Human can eat")

#     def run(self):
#         print("Human can run")

# class Teacher(Human):
#     def skill(self):
#         print("Techer can tech is")

#     def run(self):
#         super().run()
#         print("Teacher can run")

# t1=Teacher()
# t1.run()

# import random

# print(random.random())
# print("You otp is valid fopr 15 minutes:",random.randint(1000,9999))
# print(random.randrange(1,19,3))

# l1=[3,5,2,7,8,9,9,0]

# print(random.choice(l1))
# print(random.choices(l1,k=4))
# print(random.sample(l1,k=4))
# random.shuffle(l1)
# print(l1)