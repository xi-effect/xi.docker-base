ARG PYTHON_VERSION
FROM python:${PYTHON_VERSION}-alpine

RUN apk upgrade --no-cache
RUN pip install --upgrade pip

ARG POETRY_VERSION
RUN pip install poetry==${POETRY_VERSION}
RUN poetry config virtualenvs.create false
