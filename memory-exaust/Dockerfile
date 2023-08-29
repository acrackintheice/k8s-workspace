FROM python

ENV PYTHONUNBUFFERED=1

RUN mkdir app

COPY ./memory-exaust.py /app

WORKDIR /app

ENTRYPOINT [ "python", "-u", "memory-exaust.py" ]