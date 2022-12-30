Labels are unique identifiers for targets. A label in bazel follows the following structure:

`@workspace_name//package_name:target_name`

When a label is part of the main workspace, since said namespace is implicitly named '@', you will be able to refer to it by `@//package_name:target_name` or ignore the '@' alltogether and use the label `//package_name:target_name`. The package name is just simply the relative path of the package in which a target is located from the workspace root. Finally the target name coincides with the name attribute of a target in a BUILD file.

This is a bit of an oversimplification of labels, but if you want to know more about it read the official docs: https://bazel.build/concepts/labels .