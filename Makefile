all: build

build:
	python -m urubu build

serve:
	python -m urubu serve

publish: build
	git diff-index --quiet HEAD -- ;\
	if [ $$? -eq 0 ] ;\
	    then version release -r patch master draft;\
	else echo " -> Commit all changes first";\
	fi

