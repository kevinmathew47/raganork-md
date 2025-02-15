FROM quay.io/souravkl11/rgnk-v2:latest

RUN git clone https://github.com/kevinmathew47/raganork-md /railway/Raganork
WORKDIR /railway/Raganork
ENV TZ=Asia/Kolkata
RUN yarn install --network-concurrency 1
CMD ["node", "index.js"]
