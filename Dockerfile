#FROM httpd:latest
FROM nginx:latest
RUN apt update
RUN apt install nano -y
#RUN apt install mini-httpd -y
RUN apt install git -y
#Need to remove default HTML file to avoid any error while CP command
RUN rm /usr/share/nginx/html/index.html
RUN git clone https://github.com/iqbalkhan82/PresentationPrep.git
RUN cp -r PresentationPrep/. /usr/share/nginx/html/index.html
