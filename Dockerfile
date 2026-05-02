FROM eclipse-temurin:21-jdk

ENV TZ=Asia/Kolkata

WORKDIR /app
COPY . .

RUN chmod +x mvnw
RUN ./mvnw clean package -DskipTests

EXPOSE 8080

CMD ["sh", "-c", "java -jar target/*.jar"]
