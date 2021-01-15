The moment of truth: let's build and run the test harness! We will use the development toolkit to help us with this:
```
ddev test awesome
```{{execute}}

This will take a little longer to run the first time then on subsequent runs as the build phase only needs to happen once. Feel free to execute the test again to see the difference!

Finally, note the last few lines of output: tests were run for two different versions of Python, and there's also a _style checker_ to help us keep the style and syntax of the integrations consistent. You will likely fail this test at first, but the message should give you enough information to fix it. A common mistake is not including a newline at the end of the **Check.py** file.

You can also run the command with the `-fs` option, which will attempt to automatically fix style issues:

```
ddev test -fs awesome
```{{execute}}

Make sure you have no more errors before moving on to the next step!