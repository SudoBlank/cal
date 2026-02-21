#!/usr/bin/perl
$num = 0;
$num1 = 0;
$oprator = "";

print "Enter the first number: ";
$num = <STDIN>;
print "Enter the second number: ";
$num1 = <STDIN>;
print "Enter the oprator: ";
$oprator = <STDIN>;

chomp($num, $num1, $oprator);

if ($oprator eq "+") {
    print "The sum is: " . ($num + $num1);
} elsif ($oprator eq "-") {
    print "The difference is: " . ($num - $num1);
} elsif ($oprator eq "*") {
    print "The product is: " . ($num * $num1);
} elsif ($oprator eq "/") {
    if ($num1 != 0) {
        print "The quotient is: " . ($num / $num1);
    } else {
        print "Error: Division by zero is not allowed.";
    }
} else {
    print "Invalid oprator. Please use +, -, *, or /.";
}