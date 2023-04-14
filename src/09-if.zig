const std = @import("std");
const expect = std.testing.expect;

pub fn main() void {
    var discount = true;

    // If statements are also valid expressions:
    var price: u8 = if (discount) 17 else 20;

    std.debug.print("With the discount, the price is ${}.\n", .{price});
}

test "if statement expression" {
    const a = true;
    const x = if (a) 1 else 2;
    try expect(x == 1);
}
