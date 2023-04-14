const std = @import("std");

pub fn main() void {
    const le = [_]u8{ 1, 3 };
    const et = [_]u8{ 3, 7 };

    // You can use '++' to concatenate two arrays:
    const leet = le ++ et; // equals 1 3 3 7

    // You can use '**' to repeat an array:
    const bit_pattern = [_]u8{ 1, 0, 0, 1 } ** 3; // 1 0 0 1 1 0 0 1 1 0 0 1

    // We could print these arrays with Zig 'for' loops:
    //    for (<item array>) |item| { <do something with item> }
    std.debug.print("LEET: ", .{});

    for (leet) |n| {
        std.debug.print("{}", .{n});
    }

    std.debug.print(", Bits: ", .{});

    for (bit_pattern) |n| {
        std.debug.print("{}", .{n});
    }

    std.debug.print("\n", .{});
}

// Note that both '++' and '**' only operate on arrays while your program is
// _being compiled_. This special time is know in Zig parlance as "comptime".
