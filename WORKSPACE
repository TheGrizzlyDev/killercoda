load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive", "http_file")

# Start setup of rules_pkg

http_archive(
    name = "rules_pkg",
    urls = [
        "https://mirror.bazel.build/github.com/bazelbuild/rules_pkg/releases/download/0.8.0/rules_pkg-0.8.0.tar.gz",
        "https://github.com/bazelbuild/rules_pkg/releases/download/0.8.0/rules_pkg-0.8.0.tar.gz",
    ],
    sha256 = "eea0f59c28a9241156a47d7a8e32db9122f3d50b505fae0f33de6ce4d9b61834",
)
load("@rules_pkg//:deps.bzl", "rules_pkg_dependencies")
rules_pkg_dependencies()

# End setup of rules_pkg

# Start setup of 3rd-party binary utils
http_file(
    name = "bazelisk_linux_amd64",
    sha256 = "19fd84262d5ef0cb958bcf01ad79b528566d8fef07ca56906c5c516630a0220b",
    urls = [
        "https://github.com/bazelbuild/bazelisk/releases/download/v1.15.0/bazelisk-linux-amd64",
    ],
)