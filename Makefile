DOCKER_IMAGE?=teleportpark/default-backend
DOCKER_TAG?=latest

docker: docker-build docker-publish

docker-build:
	docker build . -t $(DOCKER_IMAGE):$(DOCKER_TAG)

docker-publish:
	docker push $(DOCKER_IMAGE):$(DOCKER_TAG)
