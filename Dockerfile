FROM python:3.12-slim
ARG FAWLTYDEPS_VERSION=v0.15.0

ENV VIRTUAL_ENV=/home/app/venv
RUN python -m venv $VIRTUAL_ENV
RUN  source $VIRTUAL_ENV/bin/activate \
    && pip install --no-cache-dir --upgrade pip setuptools  \
    && pip install --no-cache-dir fawltydeps==$FAWLTYDEPS_VERSION

ENV PATH="/home/app/venv/bin:$PATH"

ENTRYPOINT ["/home/app/venv/bin/fawltydeps"]
