FROM node:alpine
MAINTAINER vi.nt "vi.nt@geekup.vn"

RUN npm install -g nodemon 
RUN mkdir /watchmen
WORKDIR /watchmen

# Add all the project
VOLUME /watchmen

ENV WATCHMEN_WEB_PORT=3000

EXPOSE 3000

CMD ["node","/watchmen/run-monitor-server.js"]