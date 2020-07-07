FROM java:8
#RUN apt-get update
#RUN apt-get install -y wget
#COPY HelloWorld.java /
COPY src /home/root/javahelloworld/src
#RUN javac HelloWorld.java
WORKDIR /home/root/javahelloworld
RUN mkdir bin && javac -d bin src/HelloWorld.java
ENTRYPOINT ["java", "-cp", "bin", "HelloWorld"]
#ENTRYPOINT ["java", "HelloWorld"]

