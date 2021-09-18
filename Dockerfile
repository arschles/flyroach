FROM ubuntu:xenial


COPY . .
RUN "./install.sh"
CMD ["./start.sh"]
