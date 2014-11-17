VSN = 2.0.2-1
BUILD=$(VSN)-3
IMG = arne/riak:$(BUILD)
IMG_LATEST = arne/riak:latest

.PHONY: all image

all: latest

latest:	image
	docker tag "$(IMG)" "$(IMG_LATEST)"

image: Dockerfile Makefile
	docker build -t "$(IMG)" .
