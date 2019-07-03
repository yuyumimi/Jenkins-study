FROM java:8

WORKDIR /opt

COPY ./target/demo-0.0.1-SNAPSHOT.jar .

RUN chmod 775 demo-0.0.1-SNAPSHOT.jar

EXPOSE 8000
ENTRYPOINT ["java","-jar","demo-0.0.1-SNAPSHOT.jar"]
