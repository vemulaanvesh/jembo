FROM ubuntu:latest
RUN apt-get update
RUN apt-get install wget -y
CMD ["wget https://deb.nodesource.com/setup_8.x | -E bash -"]
RUN apt-get install -y nodejs
RUN apt-get install nginx -y
RUN apt-get install npm -y
RUN cd /var/www/html
RUN mkdir -p vue/app
RUN cd vue/app
#RUN git clone https://github.com/vemulaanvesh/VueDeployTest.git app
COPY VueDeployTest .
COPY default /etc/nginx/sites-available
# RUN apt-get install vim 
# RUN vi default
CMD ["npm run build"]
