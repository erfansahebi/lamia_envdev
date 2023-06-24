# Use bash as default shell
SHELL := /bin/bash
IMAGES := lamia_auth \
          lamia_gateway \
          lamia_nginx \


# build docker images
build:
	for image in $(IMAGES) ; do make -C $$image build; done