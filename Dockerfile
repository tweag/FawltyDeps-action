FROM python:3.12-alpine
ARG FAWLTYDEPS_VERSION=v0.15.0

RUN mkdir -p /github/workspace
RUN addgroup -S app && adduser -S -G app app
RUN chown app:app /github/workspace

USER app

ENV VIRTUAL_ENV=/home/app/venv
RUN python -m venv $VIRTUAL_ENV
RUN  source $VIRTUAL_ENV/bin/activate \
    && pip install --no-cache-dir --upgrade pip setuptools  \
    && pip install --no-cache-dir fawltydeps==$FAWLTYDEPS_VERSION

ENV PATH="/home/app/venv/bin:$PATH"
WORKDIR /github/workspace

ENTRYPOINT ["/home/app/venv/bin/fawltydeps"]
