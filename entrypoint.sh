docker run --rm --privileged --pid=host -v /var/run/docker.sock:/var/run/docker.sock docker:latest nsenter -t 1 -m -u -n -i "$@"
