IMAGE = minio-mc-arm
SUDO = sudo

all: build test

build:
	$(SUDO) docker build -t $(IMAGE):$$(git rev-parse --abbrev-ref HEAD) .

test: build
	$(SUDO) docker run -it --rm \
	$(IMAGE):$$(git rev-parse --abbrev-ref HEAD)
