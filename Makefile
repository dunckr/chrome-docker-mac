IP=$(shell ifconfig en0 | grep inet | awk '$$1=="inet" {print $$2}')

all: run

run:
	@if [[ -z `netstat -an | grep 6000` ]]; then \
		open -a XQuartz; \
	fi;
	@xhost "+${IP}";
	@docker run \
		--rm \
		--memory 512mb \
		--net host \
		--security-opt seccomp:unconfined \
		--env "DISPLAY=${IP}:0" \
		jess/chrome;

.PHONY: run
