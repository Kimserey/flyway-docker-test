FROM boxfuse/flyway
WORKDIR /src

COPY . .
ENTRYPOINT [ "flyway", "-configFiles=conf/flyway.conf", "migrate" ]