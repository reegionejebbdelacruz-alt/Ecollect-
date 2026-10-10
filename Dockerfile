# Ecollect on Render.com (or any Docker host)
# Uses only a Java runtime — no build step, no dependencies.
FROM eclipse-temurin:21-jre
WORKDIR /app
COPY Main.java hero.png ./
EXPOSE 8080
# Render injects $PORT; listen on it (default 8080 for local runs).
CMD ["sh", "-c", "java Main.java ${PORT:-8080}"]
