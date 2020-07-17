publish:
	rm -rf public
	rm -rf docs
	mkdir docs
	./zola build --output-dir docs
	cp CNAME docs/

serve:
	./zola serve
