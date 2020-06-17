.PHONY: bodypix fakecam

default: build stop fakecam

stop:
	-docker stop -t0 fakecam

build:
	docker build -t fakecam ./fakecam

bodypix:
	docker run --rm -d --name=bodypix --network=fakecam -p 9001:9001 --gpus=all --shm-size=1g --ulimit memlock=-1 --ulimit stack=67108864 bodypix

fakecam:
	docker run --rm -d --name=fakecam --network=fakecam --device /dev/video0 --device /dev/video20 fakecam

# docker run --rm --name=fakecam --network=fakecam  -u "$(id -u):$(getent group video | cut -d: -f3)" $(find /dev -name 'video*' -printf "--device %p ") fakeca
