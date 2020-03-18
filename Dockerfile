FROM sagemath/sagemath:8.9
LABEL maintainer="Daniel Balague Guardia <danielbalague@gmail.com>"
ENV LC_ALL C.UTF-8
ENV LANG C.UTF-8
ENV SHELL /bin/bash

USER sage
ENV HOME /home/sage

ENV SAGE_ROOT=/home/sage/sage

ENV PATH="/home/sage/sage/build/bin:/home/sage/sage/src/bin:/home/sage/sage/local/bin:${PATH}"

RUN sage -pip install rise
COPY --chown=sage:sage Sections /home/sage/