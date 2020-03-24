# Name: Fábio Ferreira
# Data: 23/03/2020
# Version: 1.0
#
# Use the official gradle image to create a build artifact
# Image utility for create an instance with gradle

FROM gradle:4.10 as builder

# Expose port
EXPOSE 8085

# Copy local code to the container image.
COPY build.grade .
COPY src ./src

# Build a release
RUN gradle clean build --no-daemon

# Use AdoptOpenJDK for base image
FROM adoptopenjdk/openjdk8:jdk8u202-b08-alpine-slim

# Copy the jar to the production image from the builder stage.
COPY --from=builder /home/gradle/build/libs/gradle.jar /helloworld.jar

# Run the web service on container startup.
CMD [ "java", "-jar", "-Djava.security.egd=file:/dev/./urandom", "/helloworld.jar" ]