# Prompts for input and prints the result immediately

# user_name <- readline(prompt="Enter your name: ")
# cat("Hello,", user_name, "\n")


# while (TRUE) {
#   val <- readline(prompt = "Enter a number (or 'exit' to stop): ")
#   if (val == "exit") break
#   
#   num_val <- as.numeric(val)
#   # Print the result immediately
#   cat("The square of", num_val, "is", num_val^2, "\n")
# }

# val <- readline(prompt = "Enter your name: ")
# 
# print(val)


# add_numbers <- function() {
#   a <- as.numeric(readline("Enter first number: "))
#   b <- as.numeric(readline("Enter second number: "))
#   print(a + b)
# }
# add_numbers()


mainMy<-function(num1,num2){
  sum<-num1+num2
  diff<-num1-num2
  mul<-num1*num2
  avg<-(num1+num2)/2
  
  return(list(s=sum,d=diff,m=mul,a=avg))
}

l1<-mainMy(5,8)
print(l1)
print(l1$s)
print(l1$d)

sum(5,7,9)
mean(c(4,2,3))

