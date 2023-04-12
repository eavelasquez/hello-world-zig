// The @import() function is built into Zig. It returns a value which represents
// the imported code. It's a good idea to store the import as a constant value
// with the same name as the import.
const std = @import("std");

// Zig functions are private by default but the main() function should be public.
pub fn main() void {
    std.debug.print("Hello, {s}!\n", .{"World"});
}

// Note: Imports must be declared as constants because they can only be used at
// compile time rather than run time. Zig evaluates constant values at compile time.
