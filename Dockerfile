FROM ibmcom/ace-server:11.0.0.10-r1-20200911-030305-amd64
COPY *.bar /home/aceuser/bars/
RUN ace_compile_bars.sh
ENV LICENSE accept
