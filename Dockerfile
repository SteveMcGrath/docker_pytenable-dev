FROM python:3-alpine

ENV TIO_ACCESS_KEY ""
ENV TIO_SECRET_KEY ""
ENV TSC_ACCESS_KEY ""
ENV TSC_SECRET_KEY ""
ENV TSC_ADDRESS ""
ENV TSC_PORT ""


RUN mkdir /workspace && apk add --no-cache  \
    gcc                                     \
    libc-dev                                \
    libffi-dev                              \
    openssl-dev

COPY requirements.txt /tmp/requirements.txt
RUN pip install -r /tmp/requirements.txt
RUN pip install "pytenable[complete]"

WORKDIR /workspace

CMD /usr/local/bin/bpython