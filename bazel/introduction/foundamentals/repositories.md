Repositories are simply containers of related source files. In fact, the idea is very similar to repositories in git which usually contain a bunch of source files that are used to satisfy a similar purpose.

As a matter of fact, the workspace itself is a repository and is implicitly named `@`. All repositories have names and later on we will discuss this in more details when talking about labels.

Repositories are extremely useful as they allow you to import source from anywhere outside your build, thus constituting the basic building block upon which bazel handles external dependencies.