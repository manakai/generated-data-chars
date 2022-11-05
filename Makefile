GIT = git

all:

build-git-add:

build-git-commish:
	$(GIT) commit -m auto
	$(GIT) push

## License: Public Domain.
