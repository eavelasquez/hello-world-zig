//
// Zig 'while' statements create a loop that runs while the
// condition is true. This runs once (at most):
//
//     while (condition) {
//         condition = false;
//     }
//
// Remember that the condition must be a boolean value and
// that we can get a boolean value from conditional operators
// like '==', '<', '>' and '!='.
//
const std = @import("std");
const expect = std.testing.expect;

pub fn main() void {
    var n: u32 = 2;

    while (n < 1000) {
        std.debug.print("{} ", .{n});
        n *= 2;
    }

    std.debug.print("n={}\n", .{n}); // 1024
}

test "while" {
    var i: u8 = 2;

    while (i < 100) {
        i *= 2;
    }

    try expect(i == 128);
}
