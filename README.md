# docker-alpine-oraclejdk7

This image is based on Alpine Linux image, which is only a 5MB image, and contains
[OracleJDK 7](http://www.oracle.com/technetwork/java/javase/overview/index.html).
This repository also has a Dockerfile to build an image with
[Apache Maven](https://maven.apache.org/) 3.2.5.

## Images

- Image with Oracle JDK7 only:

  [![](https://badge.imagelayers.io/caarlos0/alpine-oraclejdk7.svg)](https://imagelayers.io/?images=caarlos0/alpine-oraclejdk7 'Get your own badge on imagelayers.io')

- Image with Oracle JDK& and Apache Maven:

  [![](https://badge.imagelayers.io/caarlos0/alpine-oraclejdk7-mvn.svg)](https://imagelayers.io/?images=caarlos0/alpine-oraclejdk7-mvn 'Get your own badge on imagelayers.io')

## Usage Example

```sh
$ echo -e 'public class Main { public static void main(String[] args) { System.out.println("Hello World"); } }' > Main.java
$ docker run --rm -v `pwd`:/tmp --workdir /tmp caarlos0/alpine-oraclejdk7 \
  sh -c 'javac Main.java && java Main'
```

Once you have run this command you will get printed 'Hello World' from Java!

There is also an image with [Maven](https://maven.apache.org/) 3.2.5
bundled within:

```sh
$ cd my/jdk7/project
$ docker run --rm -v `pwd`:/tmp --workdir /tmp caarlos0/alpine-oraclejdk7-mvn \
  mvn clean install
```


## Thanks

This project is heavily based on
[frol/docker-alpine-oraclejdk8](https://github.com/frol/docker-alpine-oraclejdk8).

Many thanks :beers:.
