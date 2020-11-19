IMAGE = sphinx
TARGET = /docs
PROJECT = practice
AUTHOR = 'Taku Ikegami'
LANGUAGE = ja
VERSION = 1.0.0

image:
	docker build --no-cache=true -t $(IMAGE) .

quickstart:
	docker run --rm -it -v "$$PWD"$(TARGET):/docs $(IMAGE) sphinx-quickstart -q -p $(PROJECT) -a $(AUTHOR) -l $(LANGUAGE) -v $(VERSION) --sep

html:
	docker run --rm -it -v "$$PWD"$(TARGET):/docs $(IMAGE) make html

clean:
	rm -rf .$(TARGET)/*
	docker rmi $(IMAGE)