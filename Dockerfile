FROM ubuntu:latest

RUN apt-get -y update && apt-get install -y

RUN apt-get -y install clang


COPY . /usr/src/dockertest1
WORKDIR /usr/src/dockertest1

# Use Clang to compile the Test.cpp source file
RUN clang++ -o Test New.cpp

# Run the output program from the previous step
CMD ["New"]