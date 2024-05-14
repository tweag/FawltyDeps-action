FROM python:3.12-slim
ARG VERSION=v0.15.0

ENV VIRTUAL_ENV=/opt/venv
RUN python -m venv $VIRTUAL_ENV
RUN $VIRTUAL_ENV/bin/pip install --no-cache-dir --upgrade pip setuptools  \
 && $VIRTUAL_ENV/bin/pip install --no-cache-dir fawltydeps==$VERSION

ENV PATH="${VIRTUAL_ENV}/bin:$PATH"

CMD ["${VIRTUAL_ENV}/bin/fawltydeps"]
