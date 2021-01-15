There are lots of ways to accomplish our goal. One popular technique is to use Docker to spin up a very small, very lightweight environment that meets the needs of the testing scenario. In our case, we'll use it to set up and run a web server, query that server for a page, and then analyse the result according to our check logic.

We'll start by setting up a Docker configuration. Head back to the Datadog integration documentation and check out [the docker-compose.yml file](https://docs.datadoghq.com/developers/integrations/new_check_howto/#building-an-integration-test). Unlike the other files we've worked with so far, this one doesn't exist yet, so we need to create it first:
```
cd $HOME/dd/integrations-extras/
touch awesome/tests/docker-compose.yml
```{{execute}}

Now just copy and paste to `dd/integrations-extras/awesome/tests/docker-compose.yml`{{open}} for the win!

As always, it's good to ask some questions:
- Which web server software will be installed?
- What port will be exposed to our test harness?
