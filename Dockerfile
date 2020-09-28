FROM ibmcom/ace-server:latest
COPY *.bar /home/aceuser/bars/
RUN ace_compile_bars.sh
ENV LICENSE accept
RUN usermod -aG aceuser 1000590000
