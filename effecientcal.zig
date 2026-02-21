const std = @import("std");

pub fn main() !void {
    const stdin = std.io.getStdIn().reader();
    const stdout = std.io.getStdOut().writer();

    var buf: [64]u8 = undefined;

    try stdout.print("First number: ", .{});
    const a_str = (try stdin.readUntilDelimiterOrEof(&buf, '\n')).?;
    const a = try std.fmt.parseInt(i32, a_str, 10);

    try stdout.print("Second number: ", .{});
    const b_str = (try stdin.readUntilDelimiterOrEof(&buf, '\n')).?;
    const b = try std.fmt.parseInt(i32, b_str, 10);

    try stdout.print("Operator (+ - * /): ", .{});
    const op = (try stdin.readUntilDelimiterOrEof(&buf, '\n')).?;

    const result = if (std.mem.eql(u8, op, "+")) a + b
        else if (std.mem.eql(u8, op, "-")) a - b
        else if (std.mem.eql(u8, op, "*")) a * b
        else if (std.mem.eql(u8, op, "/")) a / b
        else {
            try stdout.print("Invalid operator\n", .{});
            return;
        };

    try stdout.print("Result: {}\n", .{result});
}