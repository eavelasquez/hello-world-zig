//
// You can force a loop to exit inmediately with a "break" statement:
//
//     while (condition) : (continue expression) {
//         if (other condition) break;
//     }
//
// Continue expressions do NOT execute when a while loop stops
// because of a break!
//
const std = @import("std");
const expect = std.testing.expect;

pub fn main() void {
    var n: u32 = 1;

    while (true) : (n += 1) {
        if (n == 4) break;
    }

    std.debug.print("n={}\n", .{n});
}

test "while with break" {
    var sum: u8 = 0;
    var i: u8 = 0;

    while (i <= 3) : (i += 1) {
        if (i == 2) break;
        sum += i;
    }

    try expect(sum == 1);
}
