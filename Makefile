docker_build:
	docker build --platform linux/amd64 --no-cache -t distribution.thenerdcompany.us/laibulle/neurochem:latest .

docker_push: docker_build
	docker push distribution.thenerdcompany.us/laibulle/neurochem:latest