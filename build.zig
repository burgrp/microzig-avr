const std = @import("std");

pub const microzig = @import("deps/microzig/build.zig");
pub const chips = @import("src/chips.zig");

pub fn build(b: *std.build.Builder) void {
    // Build the minimal program for each chip.
    inline for (@typeInfo(chips).Struct.decls) |decl| {
        if (!decl.is_pub)
            continue;

        std.debug.print("Building {s} ...\n", .{decl.name});

        const exe = microzig.addEmbeddedExecutable(b, .{
            .name = @field(chips, decl.name).name ++ ".minimal",
            .source_file = .{
                .path = "test/programs/minimal.zig",
            },
            .backing = .{ .chip = @field(chips, decl.name) },
            // We must use ReleaseSmall as Debug build fails due to an LLVM lowering issue.
            .optimize = std.builtin.OptimizeMode.ReleaseSmall,
        });

        exe.installArtifact(b);
    }
}
