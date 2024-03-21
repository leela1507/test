# Use a slim OpenJDK 17 image as the base
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the Java source code (replace 'HelloWorld.java' with your actual file)
COPY HelloWorld.java .

# Compile the Java code
RUN javac HelloWorld.java

# Set the working directory for the application
WORKDIR /app

# Define the entrypoint to run the application
ENTRYPOINT ["java", "-jar", "HelloWorld.class"]
