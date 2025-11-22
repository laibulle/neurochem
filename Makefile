docker_build:
	docker build --platform linux/amd64 --no-cache -t laibulle/neurochem:latest .

docker_push: docker_build
	docker push laibulle/neurochem:latest