FROM alpine:3.2

EXPOSE 4242 8070
VOLUME ["/data", "/lib64"]
ADD https://github.com/bosun-monitor/bosun/releases/download/0.4.0/bosun-linux-amd64 /bosun/bosun
RUN chmod +x /bosun/bosun
CMD ["/bosun/bosun", "-disable-syslog", "-c", "/data/bosun.conf"]
