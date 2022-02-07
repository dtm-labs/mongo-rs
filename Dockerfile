# syntax=docker/dockerfile:1
FROM mongo
ENV MONGO_INITDB_ROOT_USERNAME root
ENV MONGO_INITDB_ROOT_PASSWORD passwd123root
RUN echo "rs.initiate();" > /docker-entrypoint-initdb.d/replica-init.js
CMD ["--replSet", "rs0"]
