FROM httpd:latest
RUN apt update
RUN apt install nano -y
#RUN apt install mini-httpd -y
RUN apt install git -y
RUN git clone https://github.com/iqbalkhan82/PresentationPrep.git
RUN cp -r PresentationPrep/. /usr/local/apache2/htdocs/
