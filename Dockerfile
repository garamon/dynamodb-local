from openjdk:8-jre

RUN mkdir /usr/local/dynamodb
RUN curl https://s3-ap-northeast-1.amazonaws.com/dynamodb-local-tokyo/dynamodb_local_latest.tar.gz | tar zx -C /usr/local/dynamodb
WORKDIR /usr/local/dynamodb

ENTRYPOINT ["java",  "-Djava.library.path=./DynamoDBLocal_lib",  "-jar",  "DynamoDBLocal.jar"]
EXPOSE 8000
