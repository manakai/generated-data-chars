GIT = git

all:

build-git-add:
	$(GIT) add charrels

build-git-commish:
	$(GIT) commit -m auto
	$(GIT) push

## License: Public Domain.
