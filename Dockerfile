FROM node:10

ENV NODE_ENV=production
ENV DEBUG=*
WORKDIR /usr/src/EtherScamDB

RUN git clone https://github.com/CryptoScamDB/cryptoscamdb.org.git /usr/src/EtherScamDB
RUN npm install --only=production
COPY . .
EXPOSE 80
EXPOSE 443
EXPOSE 5111

CMD ["npm", "start"]