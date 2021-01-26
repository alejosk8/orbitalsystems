FROM odoo:14.0

LABEL MAINTAINER Jose Barrientos <josebarrientosq@gmail.com>
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
