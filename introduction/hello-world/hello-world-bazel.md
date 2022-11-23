Now that you have a working script, let's make it available to the build system. For that to be possible you will need to create a target. We'll go into more details of what a target is soon, but for now, just think of a target as something that you can, well, target! Let's start by adding the following code inside the `BUILD` file:

```python
sh_binary(
    name = "helloworld",
    srcs = ["helloworld.sh"],
)
```

With that you now have your first target, which is using a rule `sh_binary` to build some kind of executable artifact. For now, think of a rule as a set of predefined actions that given some inputs will return some outputs to Bazel. Now you can build this target with `bazel build //:helloworld`{{exec}} which will then generate an executable in `/root/hello-world/bazel-bin/helloworld`{{exec}}. Bazel also allows you to instantly execute an executable without knowing its location by using `bazel run //:helloworld`{{exec}}. This though does not work with every single target and you will later find out why, but for now just rely on the following rule of thumb: 'if the rule is called something like *_binary it will most likely work with bazel run'.