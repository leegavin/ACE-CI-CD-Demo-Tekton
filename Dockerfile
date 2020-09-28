FROM ibmcom/ace-server:latest
COPY PingService.bar /home/aceuser/bars/
RUN ace_compile_bars.sh
ENV LICENSE accept
RUN chmod 755 /home/aceuser/PingService
