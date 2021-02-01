The moment of truth: build and run the test harness! You'll use the development toolkit to help with this:
```
ddev test awesome
```{{execute}}

This will take a little longer to run the first time then on subsequent runs as the build phase only needs to happen once. Feel free to execute the test again to see the difference!

Finally, note the last few lines of output: tests were run for two different versions of Python, and there's also a _style checker_ to help us keep the style and syntax of the integrations consistent. 

If you fail the style checker, you'll see something like this:
```
ERROR:   style: commands failed
```

If you didn't, congratulations! If you _did_, it's very easy to fix; the tooling can help or even do it for you. Take a look at the `-s` and `-fs` switches:
```
ddev test -h
```{{execute}}

Looks promising! Try it out:
```
ddev test -fs awesome
```{{execute}}

Run `grademe`{{execute}} before moving onto the next module to mark this module as complete.