

# age<-6
# 
# if(age>18){
#   print("You can drive the car")
# }else{
#   print("You can not drive the car")
# }


age<-0

if(age<=0 | age>120){
  print("Invalid age")
}else if (age>0 & age<18){
  print("You are child can not drive the car")
}else if(age>=18 & age<=80){
  print("You can drive the car")
}else{
  print("You are overaged")
}
