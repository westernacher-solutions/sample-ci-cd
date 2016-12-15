FROM java
MAINTAINER Torsten Werner

WORKDIR /usr/src/app

# download the gradle wrapper
COPY gradlew /usr/src/app/
COPY gradle /usr/src/app/gradle/
RUN ./gradlew wrapper

# download project dependencies
COPY build.gradle /usr/src/app/
RUN ./gradlew downloadDependencies

# build the project and run tests
COPY . /usr/src/app/
RUN ./gradlew build

EXPOSE 8080

CMD ["./gradlew", "bootrun"]
