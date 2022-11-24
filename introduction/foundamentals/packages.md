A package in Bazel is a sub-path in a repository containing a BUILD file and any amount of other files. This allows grouping files and build targets more granularly then otherwise possible with repositories.

A package may contain one of more targets that can be invoked in a build.