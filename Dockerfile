FROM debian:stretch
RUN apt-get update && apt-get install iproute2 procps iptables net-tools
ENV DNSMASQ_PORT=53
ENV NET_OVERLAY_IF=weave
COPY weave-tc.sh .
ENTRYPOINT ./weave-tc.sh
