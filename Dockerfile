 FROM ibmcom/ace:11.0.0.8-r1-amd64
 ADD *.bar /home/aceuser/initial-config/bars/
 EXPOSE 7600 7800 7843 9483
 ENV LICENSE accept
