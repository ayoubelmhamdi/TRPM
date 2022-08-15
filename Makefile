
build:
	mdbook build
	cd gh-pages
	git update-ref -d refs/heads/gh-pages
	rm -rf *
	cp ../book/* .
	git add .
	git commit -m "Deploy $GITHUB_SHA to gh-pages"
	git push --force -u origin gh-pages

init:
	mkdir -p gh-pages
	git branch gh-pages
	git worktree add gh-pages gh-pages
