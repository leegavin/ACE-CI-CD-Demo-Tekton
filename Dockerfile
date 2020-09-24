# Demo
FROM ibmcom/ace:latest
COPY *.bar /home/aceuser/bars/
RUN ace_compile_bars.sh
ENV LICENSE accept
