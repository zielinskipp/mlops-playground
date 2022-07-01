FROM ubuntu:20.04
RUN apt-get update && \
	apt-get install python3 -y
COPY read-build-variable.py .
ARG HELLO_WORLD="Change me at build, sir!"
ENV HELLO_WORLD=$HELLO_WORLD
ENTRYPOINT ["python3", "read-build-variable.py"]
