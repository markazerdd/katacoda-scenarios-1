1. Open the IDE tab to the right and open `docker-compose.yml`{{open}} (The first time you click a file to open it, it can take a few seconds to launch. Since there is only one file, it may be quicker to just choose the file in the editor.). 
3. Notice that only a single Redis image is in the file, but we want to add the Datadog agent. Datadog will run as a sidecar container on our host. 
4. Copy the following text, then paste it into the file.

   <pre class="file" data-target="clipboard">
   datadog:
       links:
       - redis # Ensures datadog container can connect to redis container
       image: gcr.io/datadoghq/agent:7
       environment:
       - DD_API_KEY
       - DD_HOSTNAME=dockerhost
       volumes:
       - /var/run/docker.sock:/var/run/docker.sock:ro
       - /proc/:/host/proc/:ro
       - /sys/fs/cgroup:/host/sys/fs/cgroup:ro
   </pre> 

   You can see the indent levels for this section in this image: ![alt](assets/step3indentlevel.png)
5. In the terminal, ensure you are in the `/root/lab` directory.
6. Run `docker-compose up`{{execute}} in the terminal to start.
7. Switch over to the Terminal 2, ensure you are in the `/root/lab` directory, and run the Datadog status command: `docker-compose exec datadog agent status`{{execute T2}}
8. As you can see, the Datadog agent is running. APM is enabled in the default configuration, but Logs is not. Instead of using a configuration file, we use environment variables to adjust this.
9. In the editor, if you need to Logs, you would add the following environment variable to the Datadog service:
        DD_LOGS_ENABLED=true

   The environment variables will have the same format as the `DD_HOSTNAME` env var. If desired, you could disable APM by setting `DD_APM_ENABLED` to `false`.

10. In the first terminal tab, press CTRL-C to stop docker-compose and then run docker-compose up again to restart it.
11. In the second terminal, run the status command and see if you have successfully enabled them.
12. Review the available environment variables in <a href="https://docs.datadoghq.com/agent/docker/?tab=standard#environment-variables" target="_datadog">the documentation</a>
13. When you are done with this section, run the `finish`{{execute}} command and then click the **Continue** button.

It's important to note that when working with containers, you only install the agent within the container environment. You don't need to install it on the host as well.
