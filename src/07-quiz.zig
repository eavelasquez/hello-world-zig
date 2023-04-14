const std = @import("std");

pub fn main() void {
    const letters = "YZhifg";

    // Note: usize is an unsigned integer type used for ...sizes.
    // The exact size of usize depends on the target CPU architecture.
    // We could have used a u8 here, but usize is the idiomatic type
    // to use for array indexing.
    var x: usize = 1;

    // Note: When you want to declare memory (an array in this case)
    // without putting anything in it, you can set it to 'undefined'.
    var lang: [3]u8 = undefined;

    // The following lines attempt to put 'Z', 'i', and 'g' into the
    // 'lang' array we just created by indexing the array 'letters'
    // with the variable 'x'. As you can see above, x=1 to begin with.
    lang[0] = letters[x];

    x = 3;
    lang[1] = letters[x];

    x = 5;
    lang[2] = letters[x];

    std.debug.print("Program in {s}!\n", .{lang});
}
