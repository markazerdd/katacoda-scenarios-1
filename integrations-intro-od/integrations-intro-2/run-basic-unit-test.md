Now it is time to build and run the test harness. You'll use the development toolkit to help with this:
```
ddev test awesome
```{{execute}}

This will take a little longer to run the first time then on subsequent runs as the build phase only needs to happen once. You can run this multiple times to see the difference.

Note the last few lines of output: tests were run for two different versions of Python, and there's also a _style checker_ to help us keep the style and syntax of the integrations consistent. 

If you fail the style checker, you'll see something like this:
```
ERROR:   style: commands failed
```

If you didn't, great! If you _did_, it's usually easy to fix. The tooling provides a "code style formatter", using the `-fs` flag:
```
ddev test -fs awesome
```{{execute}}

Run `grademe`{{execute}} before moving onto the next module to mark this module as complete.