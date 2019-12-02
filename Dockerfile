FROM python:3-alpine

ENV TIO_ACCESS_KEY ""
ENV TIO_SECRET_KEY ""
ENV TSC_ACCESS_KEY ""
ENV TSC_SECRET_KEY ""
ENV TSC_ADDRESS ""
ENV TSC_PORT ""

RUN    mkdir /workspace                 \
    && apk add --no-cache gcc libc-dev  \
    && pip install  \
        arrow       \
        bpython     \
        click       \
        pytenable   \
        restfly

WORKDIR /workspace

CMD /usr/local/bin/bpython