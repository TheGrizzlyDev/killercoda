{
    pkgs ? import <nixpkgs> {}
}:

with pkgs;

mkShell {
    packages = [ bazelisk bazel-buildtools python3 jdk ];

    shellHook = ''
        alias bazel=bazelisk
    '';
}