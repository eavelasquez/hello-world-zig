//
// Zig 'while' statements can have an optional 'continue expression'
// which runs every time the while loop continues (either at the end
// of the loop or when an explicit 'continue' is invoked - we'll try
// those out next).
//
//     while (condition) : (continue expression) {
//         ...
//     }
//
const std = @import("std");
const expect = std.testing.expect;

pub fn main() void {
    var n: u32 = 2;

    while (n < 1000) : (n *= 2) {
        std.debug.print("{} ", .{n});
    }

    std.debug.print("n={}\n", .{n}); // 1024
}

test "while with continue expression" {
    var sum: u8 = 0;
    var i: u8 = 1;

    while (i <= 10) : (i += 1) {
        sum += i;
    }

    try expect(sum == 55);
}
