Since golang is already installed on the container this course runs on, we will use `go install` to setup Bazelisk. Other methods are explained in https://github.com/bazelbuild/bazelisk .

Installing bazelisk is as simple as running `go install github.com/bazelbuild/bazelisk@latest`{{exec}} .

Once that is done we need to make bazelisk available to $PATH and even better, alias the bazel command `ln -s $(go env GOPATH)/bin/bazelisk /usr/bin/bazel`{{exec}}.

You should now be able to run `bazel --version`{{exec}} to see what bazel version has been automatically installed.