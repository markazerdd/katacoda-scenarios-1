Now you'll run the integration test on its own (the `-m integration` specifies that you only want to run tests with the `integration` mark):
```
ddev test -m integration awesome
```{{execute}}

This takes a little longer than the unit test since it needs to spin up a Docker environment. It's possible that you ran into a "linter failure", which looks like this:
```
ERROR:   style: commands failed
```

If you didn't, great! If you _did_, it's usually easy to fix; the tooling has a code formatter (`-fs`) that can fix it for you:
```
ddev test -fs awesome
```{{execute}}

You now have a functional integration, complete with tests! Now you can move on to the rest of the bits and pieces that make up a complete integration.

Run `grademe`{{execute}} before moving onto the next module to mark this module as complete.