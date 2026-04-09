# import re
# pattern = re.compile(r'\d+')
# print(pattern.findall("I have 2 apples and 100000000 bananas"))

# text = "My phone number is 123-456-7890"
# result = re.search(r'\d+-\d{3}-\d{4}', text)
# print(result.group())

import threading
import time

def task1(name):
    for i in range(3):
        print(f"{name} is running")
        time.sleep(3)
def task2(name):
    for i in range(3):
        print(f"Hello sir {name} good mroning")
        time.sleep(3)

# Creating threads
# t1 = threading.Thread(target=task1, args=("Thread-1",))
# t2 = threading.Thread(target=task2, args=("Thread-2",))

# # Start threads
# t1.start()
# t2.start()

# Wait for threads to finish
# t1.join()
# t2.join()

task1("rohan")
task2("ram")

print("Done")