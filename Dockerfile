FROM eclipse-temurin:21-jdk
VOLUME /uploadtest
ARG JAR_FILE=build/libs/memo.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java"]
CMD ["-jar","app.jar"]