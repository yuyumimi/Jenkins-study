FROM java:8

WORKDIR /opt

COPY ./target/demo-0.0.1-SNAPSHOT.jar app.jar

RUN chmod 775 app.jar &&ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

EXPOSE 8000
ENTRYPOINT ["java","-jar","app.jar"]
