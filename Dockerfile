FROM ubuntu:16.04

RUN apt-get update -y && apt-get install -y curl ruby2.3 ruby2.3-dev make g++

RUN gem2.3 install fluent-plugin-kubernetes_metadata_filter -v 0.19.0
RUN gem2.3 install fluent-plugin-flatten-hash -v 0.2.0
RUN gem2.3 install fluent-plugin-systemd -v 0.0.2
RUN gem2.3 install fluent-plugin-aws-elasticsearch-service -v 0.1.6
