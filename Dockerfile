FROM ubuntu:latest
RUN apt-get update
RUN apt-get install wget -y
RUN wget https://deb.nodesource.com/setup_8.x | -E bash -
RUN apt-get install -y nodejs
RUN apt-get install nginx -y
RUN apt-get install npm -y
RUN cd /var/www/html
RUN mkdir vue
RUN cd vue
RUN git clone https://github.com/vemulaanvesh/VueDeployTest.git app
RUN cd
#RUN cd /etc/nginx/sites-available/
RUN apt-get install vim 
RUN vi default
CMD ["npm run build]"
