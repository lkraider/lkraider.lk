all: build

build:
	python -m urubu build

serve:
	python -m urubu serve

publish: build
	$(info !! Commit '_build' and then call 'version release')

