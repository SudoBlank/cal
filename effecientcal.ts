function main() {
    const num = parseFloat(prompt("Enter first number:") ?? "0");
    const operation = prompt("Enter operation (+, -, *, /):") ?? "+";
    const num2 = parseFloat(prompt("Enter second number:") ?? "0");
    if (operation === "+") {
        console.log(num+num2);
    } else if (operation === "-") {
        console.log(num-num2);
    } else if (operation === "*") {
        console.log(num*num2);
    } else if (operation === "/") {
        if (num2 === 0) {
            console.log("Cannot divide by zero");
        }
        else {
            console.log(num/num2);
        }
    }

}

main()