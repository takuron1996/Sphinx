IMAGE = sphinx
TARGET = /docs
PROJECT = practice
AUTHOR = 'Taku Ikegami'
LANGUAGE = ja
VERSION = 1.0.0
SUFFIX = '.md'
EXTENSIONS = 'sphinxcontrib.seqdiag','recommonmark'

image:
	docker build --no-cache=true -t $(IMAGE) .

rmi:
	docker rmi $(IMAGE)

quickstart:
	docker run --rm -it -v "$$PWD"$(TARGET):/docs $(IMAGE) sphinx-quickstart \
	-q -p $(PROJECT) -a $(AUTHOR) -l $(LANGUAGE) -v $(VERSION) --sep --extensions $(EXTENSIONS) \
	--suffix=$(SUFFIX)
	mv .$(TARGET)/source/index.md .$(TARGET)/source/index.rst
	sed -i '' -e "s@source_suffix = '.*'@source_suffix = ['.rst', '.md']@g" .$(TARGET)/source/conf.py
	sed -i '' -e "s@html_theme = '.*'@html_theme = 'pyramid'@g" .$(TARGET)/source/conf.py

html:
	docker run --rm -it -v "$$PWD"$(TARGET):/docs $(IMAGE) make html

clean:
	rm -rf .$(TARGET)/*