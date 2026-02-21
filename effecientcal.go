package main
import ("fmt")

func main() {
  var num int = 0
  var num2 int = 0
  var oprator string = ""
  fmt.Println("Enter number 1:")
  fmt.Scan(&num)
  fmt.Println("Enter number 2:")
  fmt.Scan(&num2)
  fmt.Println("Enter Oprator")
  fmt.Scan(&oprator)
  if oprator == "+" {
	fmt.Println(num+num2)
  }
  if oprator == "-" {
	fmt.Println(num-num2)
  }
  if oprator == "*" {
	fmt.Println(num*num2)
  }
  if oprator == "/" {
        if num2 == 0 {
            fmt.Println("Cannot divide by zero")
        } else {
            fmt.Println(num / num2)
        }
	}
}
