.PHONY: local-test

local-test:
	docker run \
		--rm \
		--privileged \
		-v $(CURDIR):/code/xsfx.jitsi_meet \
		-v /var/run/docker.sock:/var/run/docker.sock \
		-v /sys/fs/cgroup:/sys/fs/cgroup:ro \
		-w /code/xsfx.jitsi_meet \
		hub.ckc.de/vwit-infrastructure/ansible:latest \
		sh .drone.sh
