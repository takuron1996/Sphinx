IMAGE = sphinx
TARGET = /work
PROJECT = practice
AUTHOR = 'Taku Ikegami'
LANGUAGE = ja
VERSION = 1.0.0
EXTENSIONS = 'sphinxcontrib.seqdiag','recommonmark','sphinx.ext.githubpages'
THEME = agogo
DOCKER_COMMAND = docker run --rm -it -v "$$PWD"$(TARGET):/docs $(IMAGE)

image:
	docker build --no-cache=true -t $(IMAGE) .

rmi:
	docker rmi $(IMAGE)

quickstart:
	$(DOCKER_COMMAND) sphinx-quickstart \
	-q -p $(PROJECT) -a $(AUTHOR) -l $(LANGUAGE) -v $(VERSION) --sep --extensions $(EXTENSIONS)
	sed -i '' -e "s@html_theme = '.*'@html_theme = '$(THEME)'@g" .$(TARGET)/source/conf.py

html:
	$(DOCKER_COMMAND) make html

preview:
	docker run --rm -it -p 7000:8000 -v "$$PWD"$(TARGET):/docs $(IMAGE) sphinx-autobuild --host=0.0.0.0 --port=8000 source/ build/html

open:
	cp -r .$(TARGET)/build/html/. docs/

clean:
	rm -rf .$(TARGET)/*
