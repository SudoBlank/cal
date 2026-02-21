#!/usr/bin/env lua
io.write("Enter first number: ")
local num = tonumber(io.read())
io.write("Enter operation (+, -, *, /): ")
local op = io.read()
io.write("Enter second number: ")
local num2 = tonumber(io.read())

local function add(a,b)
    return a + b end
local function sub(a,b)
    return a - b end
local function mul(a,b)
    return a * b end
local function div(a,b)
    return a / b end

if op == "+" then
    print(add(num, num2))
elseif op == "-" then
    print(sub(num, num2))
elseif op == "*" then
    print(mul(num, num2))
elseif op == "/" then
    if num2 == 0 then
        print("Cannot divide by zero")
    else
        print(div(num, num2)) end
else
    print("Invalid operation") end