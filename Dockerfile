FROM python:alpine3.10

RUN set -e; \
  apk update \
  && apk add --virtual .build-deps gcc python3-dev musl-dev libffi-dev \
  && apk del libressl-dev \
  && apk add openssl-dev libxml2-dev libxslt-dev

RUN pip install --upgrade pip

RUN pip install scrapyd

COPY scrapyd.conf .

EXPOSE 6800

CMD [ "scrapyd" ]
