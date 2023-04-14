const std = @import("std");

pub fn main() void {
    // To make a multi-line string, put '\\' at the beginning of the each
    // line just like a code comment but with backslashes instead.
    const lyrics =
        \\Ziggy player guitar
        \\Jamming good with Andrew Kelley
        \\And the Spiders from Mars
    ;

    std.debug.print("{s}\n", .{lyrics});
}
