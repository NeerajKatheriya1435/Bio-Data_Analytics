# name<-readline(prompt="Enter your name: ")
# print(paste("My name is: ",name))


# user_name <- readline(prompt="Enter your name: ")
# cat("Hello,", user_name, "\n")

# name<-scan()
# print(name)

# while (TRUE) {
#   val <- readline(prompt = "Enter a number (or 'exit' to stop): ")
#   if (val == "exit") break
  
#   num_val <- as.numeric(val)
#   # Print the result immediately
#   cat("The square of", num_val, "is", num_val^2, "\n")
# }


# a <- as.numeric(readline(prompt = "Enter first number: "))
# b <- as.numeric(readline(prompt = "Enter second number: "))
# sum <- a + b
# print(sum)

# average<-function(str1){
#     print(paste("Hello Sir Good Morining",str1))
# }

# average("Rohan")

# average<-function(num1=7,num2,num3=8){
#     avg<-(num1+num2+num3)/3
#     # print(paste("Hello Sir Good Morining",avg))
#     return(avg)
# }

# print(average(6,8))

# print(average(1,2))
# print(average(,2,3))
# print()

add_numbers <- function() {
a <- as.numeric(readline("Enter first number: "))
b <- as.numeric(readline("Enter second number: "))
print(a + b)
}
add_numbers()

