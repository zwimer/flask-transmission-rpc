FROM python:3.15-alpine

RUN adduser -D user
USER user

ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1

RUN pip install --user --no-cache-dir --no-warn-script-location \
    transmission-rpc \
    requests \
    waitress \
    flask

ENTRYPOINT ["python"]
