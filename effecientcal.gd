extends Control
"""
or what ever other shit I want to extend IDK this is a calculator not a achual script
"""
@onready var num_input = $num
@onready var num2_input = $num2
@onready var result_label = $result

func _on_add_pressed():
    perform_operation("+")

func _on_sub_pressed():
    perform_operation("-")

func _on_mul_pressed():
    perform_operation("*")

func _on_div_pressed():
    perform_operation("/")

func perform_operation(op: String):
    var num = float(num_input.text)
    var num2 = float(num2_input.text)
    match op:
        "+":
            result_label.text = str(num + num2)
        "-":
            result_label.text = str(num - num2)
        "*":
            result_label.text = str(num * num2)
        "/":
            if num2 == 0:
                result_label.text = "Cannot divide by zero"
            else:
                result_label.text = str(num / num2)