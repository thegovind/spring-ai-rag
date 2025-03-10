# Build stage
FROM maven:3.9.4-eclipse-temurin-17 AS build
WORKDIR /app
COPY pom.xml ./
RUN mvn dependency:go-offline  # Cache dependencies
COPY src ./src
RUN mvn package -DskipTests

# Runtime stage
FROM eclipse-temurin:17-jre
WORKDIR /app
COPY --from=build /app/target/*.jar app.jar

# Install PostgreSQL
RUN apt-get update && apt-get install -y postgresql postgresql-contrib

# Configure PostgreSQL
USER postgres
RUN /etc/init.d/postgresql start && \
    psql --command "CREATE USER myuser WITH SUPERUSER PASSWORD 'mypassword';" && \
    createdb -O myuser mydb

EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]
