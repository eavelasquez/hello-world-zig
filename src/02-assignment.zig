const std = @import("std");

pub fn main() void {
    // "const"  values cannot change.
    // ": type" is an annotation, and may be omitted if the data type of value can be inferred.
    // "u"      types are "unsigned" and cannot store negative values.
    // "16"     means the type is 16 bits in size. "8", "32", and "64" are also valid.
    // "u16"    can hold 16 bits (0 to 65,535).
    const pi: u16 = 31415;

    // "n"      can change (it is VARiable).
    var n: u8 = 50;
    n = n + 5;

    // "i"      types are "signed" and can store negative values.
    // "i8"     can hold -128 to 127.
    const negative_eleven: i8 = -11;

    // "foo"    can hold 32 bits (0 to 4,294,967,295).
    const foo: u32 = 365321;

    // "bar"    can hold 64 bits (-9,223,372,036,854,775,808 to 9,223,372,036,854,775,807).
    var bar: i64 = 8352456321456;

    // "@as"    performs an explicit type coercion.
    const inferred_constant = @as(i32, 5);
    var inferred_variable = @as(u32, 5000);

    // constanst and variables must have a value. If no know value can be given, the undefined
    // value, which coerces to any type, may be used as long as a type annotation is provided.
    const a: i32 = undefined; // signed 32-bit constant
    var b: u32 = undefined; // unsigned 32-bit variable

    // "print" function takes two parameters. The first parameter is a string, the string may
    // contain "{}" placeholders. The second parameter is an "anonymous list literal" with the
    // values to be printed.
    std.debug.print("{} {} {} {} {} {} {} {} {}\n", .{ pi, n, negative_eleven, foo, bar, inferred_constant, inferred_variable, a, b });
}

// Note: where possible, "const" values are preferred over "var" values.
