FROM python:2.7-alpine3.7
RUN apk update \
    && apk add libxml2-dev libxslt-dev libffi-dev gcc musl-dev libgcc openssl-dev curl \
    jpeg-dev zlib-dev freetype-dev lcms2-dev openjpeg-dev tiff-dev tk-dev tcl-dev git \
    && pip install webdiff \
    && sed -i 's/localhost/0.0.0.0/g' /usr/local/lib/python2.7/site-packages/webdiff/app.py \
    && sed -i 's/localhost/0.0.0.0/g' /usr/local/lib/python2.7/site-packages/webdiff/app.pyc

ENV WEBDIFF_PORT=40888
ENTRYPOINT [ "git","webdiff" ]

EXPOSE 40888