FROM xmlangel/base-ubuntu
RUN apt-get update && \
apt-get install rsyslog openssh-server -y

COPY adduser.sh /
RUN sh adduser.sh kwang 1234
COPY entry-point.sh /
CMD ./entry-point.sh
