const Builder = @import("std").build.Builder;
const psp = @import("src/Zig-PSP/build-psp.zig");

pub fn build(b: *Builder) void {
    psp.build_psp(b, psp.PSPBuildInfo{
        .path_to_sdk = "src/Zig-PSP/",
        .src_file = "src/main.zig",
        .title = "Zig PSP Test",
    }) catch unreachable;
}
