FROM ubuntu:latest
RUN apt-get update && apt-get install -y openjdk-11-jdk
COPY demo.java /app/
WORKDIR /app/
RUN javac demo.java
CMD ["java","demo"]
