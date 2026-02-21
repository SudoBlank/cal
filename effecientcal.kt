fun main() {
    var num = readLine()?.toIntOrNull()
    var num2 = readLine()?.toIntOrNull() ?: 0
    var operator = readLine()
    if (operator == "*") {
        var result : Int
        result = num!! * num2
        println(result)
    }
    if (operator == "/") {
        var result : Int
        result = num!! / num2
        println(result)
    }
    if (operator == "+") {
        var result : Int
        result = num!! + num2
        println(result)
    }
    if (operator == "-") {
        var result : Int
        result = num!! - num2
        println(result)
    }
}