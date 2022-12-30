Though you now have a working project, we still have nothing to build, which is kind of the whole point of learning and using Bazel in the firs place. Sadly, I didn't make it this far in the official Bazel documentation so now you're on your own, sorry...

Jokes aside, we really need something to "build" and maybe even run. Let's start with creating the simplest possible bash script and let's call it `helloworld.sh`:

```bash
#!/bin/bash

echo "Hello, World!"
```

Let's also make sure it's executable by running `chmod +x /root/hello-world/helloworld.sh`{{exec}} and try to execute it as a standalone script `/root/hello-world/helloworld.sh`{{exec}} and you should see "Hello, World!" printed on stdout. Nothing crazy really and definitely not something you'd need such an advanced build system like bazel to run, but it will prove useful to create our first simple target.