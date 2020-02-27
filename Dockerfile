FROM inewsland/python:3-alpine

RUN mkdir /logs
RUN mkdir /eggs

RUN pip install --upgrade pip
RUN pip install scrapyd
COPY requirements.txt .
RUN pip install -r requirements.txt


COPY scrapyd.conf .

EXPOSE 6800

CMD [ "scrapyd" ]
