
.PHONY: run-halyard
run-halyard:
	mkdir -p ~/.hal && \
	docker run --rm -d \
		-p 8084:8084 -p 9000:9000 \
		--name halyard \
		-v $(PWD)/.bashrc:/home/spinnaker/.bashrc \
		-v ~/.hal:/home/spinnaker/.hal \
	us-docker.pkg.dev/spinnaker-community/docker/halyard:stable 

.PHONY: stop-halyard
stop-halyard:
	docker stop halyard

.PHONY: shell-halyard
shell-halyard:
	docker exec -it halyard bash 
