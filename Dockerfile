# syntax=docker/dockerfile:1
FROM mongo
RUN echo "rs.initiate();" > /docker-entrypoint-initdb.d/replica-init.js
CMD ["--replSet", "rs0"]
