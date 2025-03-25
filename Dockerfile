#FROM node:20
FROM node:20.18.3-alpine3.21
# RUN addgroup -S expense && adduser -S expense -G expense
# RUN mkdir /opt/backend
# RUN chown -R expense:expense /opt/backend
RUN addgroup -S expense && adduser -S expense -G expense && \
    mkdir /opt/backend && \
    chown -R expense:expense /opt/backend
WORKDIR /opt/backend
ENV DB_HOST="mysql"
#ENV DB_HOST="localhost"
USER expense
COPY package.json .
COPY *.js .
RUN npm install
CMD ["node","index.js"]
