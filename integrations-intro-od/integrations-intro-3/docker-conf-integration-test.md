One popular technology to set up a local server to test against is Docker. You'll use Docker to spin up a small, lightweight environment that meets the needs of the testing scenario. In this case, you'll use it to set up and run a web server, query that server for a page, and then analyze the result according to our check logic.

You'll start by setting up a Docker configuration. Head back to the Datadog integration documentation and find [the docker-compose.yml file](https://docs.datadoghq.com/developers/integrations/new_check_howto/#building-an-integration-test). This code is also provided in the lab environment here: `example_docker-compose.yml`{{open}}.

Unlike the other files you've worked with so far, this one doesn't exist yet, so you need to create it first:
```
cd $HOME/dd/integrations-extras/
touch awesome/tests/docker-compose.yml
```{{execute}}

Now copy and paste the code to `dd/integrations-extras/awesome/tests/docker-compose.yml`{{open}}.

Some questions based on looking at the Docker compose file:
<details>
  <summary>Which web server software will be installed?</summary>
  
  - `nginx`
  
</details>
<details>
  <summary>What port will be exposed to our test harness?</summary>
  
  - Port `8000` is being exposed. (and mapped to port `80` internally)
  
</details>
