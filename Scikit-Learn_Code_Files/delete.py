import argparse
# Create parser
parser = argparse.ArgumentParser(description="Simple calculator utility")

# Add arguments
parser.add_argument("num1", type=float, help="First number")
parser.add_argument("num2", type=float, help="Second number")
parser.add_argument("--operation", "-o", choices=["add", "sub"], default="add", help="Operation to perform")

# Parse arguments
args = parser.parse_args()

# Perform operation
if args.operation == "add":
    result = args.num1 + args.num2
else:
    result = args.num1 - args.num2
    
print("Result:", result)