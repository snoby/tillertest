FROM ubuntu:latest

ENV color Blue

RUN apt-get -y update && apt-get -y install nginx ruby
RUN gem install tiller

RUN echo "daemon off; " >> /etc/nginx/nginx.conf

ADD data/tiller /etc/tiller

CMD ["/usr/local/bin/tiller", "-v"]

