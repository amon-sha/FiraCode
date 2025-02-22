all: dep build

dep:
	docker build -t fira:latest .

build:
	docker run --rm -v ${PWD}:/opt fira:latest ./script/build.sh

package:
	./script/package.sh
