

# # Emplyee 1

# empId1=101
# empName1="Rohit"
# empSalary1=10000

# # Emplyee 2

# empId2=101
# empName2="Rohit"
# empSalary2=10000

# # Emplyee 3

# empId3=101
# empName3="Rohit"
# empSalary3=10000

class Human:
    def __init__(self):
        self.id=0
        self.name="guest"
        self.salary=0


# emp1=Human()
# emp2=Human()
# emp3=Human()

# emp1.id=101
# emp1.name="Shivam"
# emp1.salary=10000

# emp2.id=102
# emp2.name="Rohit"
# emp2.salary=34000

# emp3.id=103
# emp3.name="Shyam"
# emp3.salary=14000

# print(emp1.id)
# print(emp1.name)
# print(emp1.salary)

class Human:
    def __init__(self,name,id,salary):
        # print("Hello")
        self.id=id
        self.name=name
        self.salary=salary

emp1=Human("Rohan",101,34000)
# emp2=Human("Shyam",102,14000)
