all: build

build:
	python -m urubu build

serve:
	python -m urubu serve

publish: build
	if [[ -z $$(git status -s) ]];\
	    then version release -r patch master draft;\
	else\
	    echo " -> Commit all changes first";\
	fi
