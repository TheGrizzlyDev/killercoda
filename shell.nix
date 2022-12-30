{
    pkgs ? import <nixpkgs> {}
}:

with pkgs;

mkShell {
    packages = [ bazelisk bazel-buildtools python3 ];

    shellHook = ''
        alias bazel=bazelisk
    '';
}