build:
	docker build -t ariejan/libgdx-build:latest .
.PHONY: build

debug:
	docker run -t -i ariejan/libgdx-build:latest /bin/bash
.PHONY: default

push:
	docker push ariejan/libgdx-build
.PHONY: push
