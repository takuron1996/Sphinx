IMAGE = sphinxdoc/sphinx

quickstart:
	docker run --rm -it -v "$$PWD"/docs:/docs $(IMAGE) sphinx-quickstart

html:
	docker run --rm -it -v "$$PWD"/docs:/docs $(IMAGE) make html