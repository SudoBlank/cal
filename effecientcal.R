num1 <- readline(prompt = "Enter first number: ")
num2 <- readline(prompt = "Enter second number: ")
operation <- readline(prompt = "Enter operation (add, subtract, multiply, divide): ")
add <- function(x,y){
  num1 <<- x
  num2 <<- y
  return(num1 + num2)
}
subtract <- function(x,y){
  num1 <<- x
  num2 <<- y
  return(num1 - num2)
}
multiply <- function(x,y){
  num1 <<- x
  num2 <<- y
  return(num1 * num2)
}
divide <- function(x,y){
  num1 <<- x
  num2 <<- y
  if(num2 == 0){
    return("Error: Division by zero is not allowed.")
  } else {
    return(num1 / num2)
  }
}

if(operation == "add"){
  result <- add(as.numeric(num1), as.numeric(num2))
  cat("Result:", result)
} else if(operation == "subtract"){
  result <- subtract(as.numeric(num1), as.numeric(num2))
  cat("Result:", result)
} else if(operation == "multiply"){
  result <- multiply(as.numeric(num1), as.numeric(num2))
  cat("Result:", result)
} else if(operation == "divide"){
  result <- divide(as.numeric(num1), as.numeric(num2))
  cat("Result:", result)
} else {
  cat("Invalid operation. Please enter add, subtract, multiply, or divide.")
}