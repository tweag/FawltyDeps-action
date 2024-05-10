FROM python:3.12-slim as builder

ENV VIRTUAL_ENV=/opt/venv
RUN python -m venv $VIRTUAL_ENV
RUN  . /opt/venv/bin/activate \
    && pip install --no-cache-dir --upgrade pip setuptools  \
    && pip install --no-cache-dir fawltydeps==v0.15.0

FROM python:3.12-slim

COPY --from=builder /opt/venv opt/venv
ENV PATH="/opt/venv/bin:$PATH"

ENTRYPOINT ["/opt/venv/bin/fawltydeps"]
