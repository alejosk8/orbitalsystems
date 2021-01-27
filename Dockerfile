FROM odoo:14

LABEL MAINTAINER Alejo Obando <kuntursoft>
USER root

RUN pip3 install pyjwt
RUN set -x; \
        apt-get update \
        && apt-get install -y --no-install-recommends python-dev\
            build-essential \
            gcc \
            tesseract-ocr-eng \
            tesseract-ocr\
            libtesseract-dev\
            python-pil\
            python-bs4 
