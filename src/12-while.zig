//
// Continue expressions really show their utility when used with
// 'continue' statements in loops.
//
//     while (condition) : (continue expression) {
//         if (other condition) continue;
//     }
//
// The "continue expression" executes every time the loop restarts
// whether the "continue" statement happens or not.
//
const std = @import("std");
const expect = std.testing.expect;

pub fn main() void {
    var n: u32 = 1;

    // Print every number between 1 and 20 that is NOT divisible by
    // 3 or 5.
    while (n <= 20) : (n += 1) {
        // '%' symbol is the "module" operator and it returns the
        // remainder after division.
        if (n % 3 == 0) continue;
        if (n % 5 == 0) continue;
        std.debug.print("{} ", .{n});
    }

    std.debug.print("\n", .{});
}

test "while with continue" {
    var sum: u8 = 0;
    var i: u8 = 0;

    while (i <= 3) : (i += 1) {
        if (i == 2) continue;
        sum += i;
    }

    try expect(sum == 4);
}
