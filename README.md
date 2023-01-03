# Hello World
This is a simple Java application that prints "Hello, World!" to the web. It also includes a unit test to verify that the application is working as expected.
## Prerequisites
Java 8\
Maven\
Docker
# Build and Run

```bash
mvn package
```
This will create a JAR file in the target directory. \
To run the application, use the java command:

```bash
java -jar target/hello-world-1.0-SNAPSHOT.jar
```
To run the unit tests, use the mvn test command:

```bash
mvn test
```

## Dcoker
To build a Docker image of the application, use the following command:


```bash
docker build -t (name) . \
docker run -p 8080:8080 (name)
```
# Kubernetes
To deploy the application to Kubernetes, you can use the deployment.yaml and service.yaml files in the kubernetes directory. \
First, build the Docker image and push it to a registry. \
Then, update the image field in the deployment.yaml file with the URL of the Docker image \
 To create the Deployment and Service in the cluster, use the kubectl apply command:


```bash
kubectl apply -f k8s/
