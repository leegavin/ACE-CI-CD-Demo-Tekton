#FROM ibmcom/ace-server:latest
FROM ibmcom/ace-server:11.0.0.9-r3-20200724-030239-amd64
ENV LICENSE accept
COPY PingService /home/aceuser/PingService
RUN mkdir /home/aceuser/bars
RUN source /opt/ibm/ace-11/server/bin/mqsiprofile
RUN /opt/ibm/ace-11/server/bin/mqsipackagebar -a bars/PingService.bar -k PingService
RUN ace_compile_bars.sh
RUN chmod -R 777 /home/aceuser/ace-server/run/PingService
