FROM ibmcom/ace:11.0.0.9-r2-amd64
COPY *.bar /home/aceuser/bars/
RUN ace_compile_bars.sh
ENV LICENSE accept
