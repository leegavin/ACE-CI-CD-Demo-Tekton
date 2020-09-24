FROM cp.icr.io/cp/appc/ace-server-prod@sha256:2771ba69f5871c37979576389f5a2040213b913f4d46bfbcafdabdea808f5bad
COPY *.bar /home/aceuser/bars/
RUN ace_compile_bars.sh
ENV LICENSE accept
