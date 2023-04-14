const std = @import("std");
const expect = std.testing.expect;

pub fn main() void {
    const foo = 1;

    // Zig has the "usual" comparison operators such as:
    //     a == b   means "a equals b"
    //     a < b    means "a is less than b"
    //     a > b    means "a is greater than b"
    //     a != b   means "a does not equal b"
    if (foo == 1) {
        std.debug.print("Foo is 1!\n", .{});
    } else {
        std.debug.print("Foo is not 1!\n", .{});
    }
}

// The important thing about Zig's "if" is that it *only* accepts
// boolean values. It won't coerce numbers or other types of data
// to true and false. There is no concept of truthy or falsy values.

test "if statement" {
    const a = true;
    var x: u16 = 0;
    if (a) {
        x += 1;
    } else {
        x += 2;
    }
    try expect(x == 1);
}
