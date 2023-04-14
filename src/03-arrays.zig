const std = @import("std");

pub fn main() void {
    // Arrays are denoted by '[N]T', where 'N' is the number of elements in
    // the array and 'T' is the type of those elements.
    const a: [10]u8 = [10]u8{ 'h', 'e', 'l', 'l', 'o', 'w', 'o', 'r', 'l', 'd' };
    _ = a;

    // When Zig can infer the size of the array, you can use '_' for the size.
    // You can also let Zig infer the type of the value so the declaration is
    // much less verbose.
    var some_primes = [_]u8{ 1, 3, 5, 7, 11, 13, 17, 19 };

    // Set values of an array using array[index] notation:
    some_primes[0] = 2;

    // Get values of an array using array[index] notation:
    const first = some_primes[0];

    // Get the lenght of an array using the len property:
    const length = some_primes.len;

    std.debug.print("First: {}, Length: {}\n", .{ first, length });
}
