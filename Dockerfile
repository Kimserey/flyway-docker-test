FROM boxfuse/flyway
WORKDIR /src

COPY . .
ENTRYPOINT [ "flyway", "migrate", "-url=jdbc:sqlite:/app/test.db", "-locations=filesystem:migrations" ]