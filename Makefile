NAME=chrome
IMAGE="jess/chrome"
IP=$(shell ifconfig en0 | grep inet | awk '$$1=="inet" {print $$2}')

all: start

create:
	@if [[ -z `docker ps -a | grep '${NAME}'` ]] ; then \
		docker create \
			--name="${NAME}" \
			--memory 512mb \
			--net host \
			--security-opt seccomp:unconfined \
			--env "DISPLAY=${IP}:0" \
			"${IMAGE}"; \
	fi;

start: create
	@if [[ -z `netstat -an | grep 6000` ]]; then \
		open -a XQuartz; \
	fi;
	@xhost "+${IP}";
	@docker start ${NAME};

rm:
	@docker stop ${NAME}
	@docker rm -v ${NAME}
	@docker rmi -f ${IMAGE}

.PHONY: build create start rm
