docker run \
	-it \
	--rm \
	--privileged \
	--pid=host \
	docker:latest nsenter -t 1 -m -u -n -i sh -c "echo \"hello there\""