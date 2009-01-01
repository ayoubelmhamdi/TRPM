.ONESHELL: # Applies to every targets in the file!
.SHELLFLAGS += -e

build:
	mdbook build
	cd gh-pages 
	rm -rf *
	cp -rf ../book/* .
	git update-ref -d refs/heads/gh-pages
	git add .
	git commit -m "expected: one commit"
	git push --force -u origin gh-pages

init:
	mkdir -p gh-pages
	git branch gh-pages
	git worktree add gh-pages gh-pages

clean:
	rm -rf book
