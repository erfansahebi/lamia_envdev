# Use bash as default shell
SHELL := /bin/bash
IMAGES := lamia_auth \
          lamia_gateway \
          lamia_nginx \


# build docker images
build:
	for image in $(IMAGES) ; do \
  		echo "----- Building $$image image ... ----- "; \
		make -C $$image build; \
	done;