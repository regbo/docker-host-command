# docker-swarm-host-command

**WARNING**: ANY COMMAND ENTERED **WILL BE RUN AS ROOT**. A SIMPLE SLIP OF A KEY COULD CAUES MAJOR ISSUES ON YOUR SWARM HOST

However, it's very time consuming to ssh into every machine if you want to run a command on the host. This image runs docker IN docker IN docker to run a command on the host. For example, if you want to create "/tmp/this-is-a-test" on all manager nodes, the following could be added to a stack:

```
version: '3'

services:
           
  init:
    image: 'regbo/docker-swarm-host-command:latest'
    volumes:
      - /var/run/docker.sock:/var/run/docker.sock:ro
    command: ["sh", "-c", "mkdir -p /tmp/this-is-a-test"]
    deploy:
      mode: global
      placement:
        constraints:
          - node.role == manager
      restart_policy:
        condition: on-failure

```
