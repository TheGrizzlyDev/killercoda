A workspace in bazel is simply a directory containing any number of source files and a WORKSPACE file at the top-level path of said workspace. Bazel will in fact consider any folder containing a WORKSPACE file as the root of a workspace and as such, nested workspaces will, unless explicitly imported, be normally excluded a build. An example of a nested workspace is:

```
/a: directory
    - /WORKSPACE
    - /b: directory
        - /WORKSPACE
    - /c
        - /source.c
```

In this case the both `/a` and `/a/b` will be considered workspaces. As such when building `/a` bazel will ignore `/a/b` but not `/a/c` since that is not a workspace. That also means that you when running bazel from `/a` or `/a/c` the workspace root will always be `/a` but when building from `/a/b` it will be `/a/b`.