# v1 <- c(3,6,8,4)

# print(v1[2])
# print(v1[4])

# a <- c(1,2,3)
# b <- c(4,5,6)

# a + b   # 5 7 9
# a * b   # 4 10 18

# length(a)
# sum(a)


# myList<- list(
#     name="Dhruv",
#     age=23,
#     college="SRMS"
# )

# print(myList)
# myList$gender="Male"

# print(myList$name)
# print(myList$age)
# print(myList$gender)

# data <- data.frame(
#   name = c("Ram", "Shyam", "Mohan"),
#   age = c(20, 21, 22),
#   marks = c(80, 85, 90)
# )

# print(data)
# print(data$name)
# print(data$age)

# print(data[1,])
# print(data[2,])

# data$city <- c("Delhi", "Lucknow", "Kanpur")
# print(data)
# print(str(data))
# summary(data)

# a<-4
# b<-1
# c<-3

# if(a>b){
#     if(a>c){
#         print(paste(a," is greater"));
#     }
#     else{
#         print(paste(c," is greter"))
#     }
# }else{
#     if(b>c){
#         print(paste(b," is greater"))
#     }else{
#         print(paste(c, " is greater"))
#     }
# }

# choice <- 3

# result <- switch(choice,"One","Two","Three")

# print(result)   # "Two"

# sum<-0

# table<-89
# for (i in 1:10){
#     print(i*table)
# }

# for (i in 5:8){
#     sum<-sum+i
#     # print(i)
# }
# print(sum)

# i<-1
# table=34

# while(i<11){
#     print(i*table)
#     i<-i+1
# }

# i <- 1

# repeat {
#   print(i)
#   i <- i + 1
  
#   if (i > 5) {
#     break
#   }
# }


i<-1
table=34

while(i<11){
    
    if(i==5){
        next
        i<-i+1
    }
    print(i)
    i<-i+1
}

for (i in 1:8){
    if(i==5){
        next
    }
    print(i)
}



