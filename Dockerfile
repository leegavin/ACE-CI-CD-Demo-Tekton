# demo
FROM ibmcom/ace-server:latest
ENV LICENSE accept
COPY PingService.bar /home/aceuser/bars/
RUN ace_compile_bars.sh
RUN chmod -R 777 /home/aceuser/ace-server/run/PingService
