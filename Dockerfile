FROM ibmcom/ace-server:latest
ENV LICENSE accept
COPY PingService.bar /home/aceuser/bars/
RUN ace_compile_bars.sh
RUN chmod 755 /home/aceuser/ace-server/run/PingService
