# docker-alpine-oraclejdk7 [![](https://badge.imagelayers.io/caarlos0/alpine-oraclejdk7.svg)](https://imagelayers.io/?images=caarlos0/alpine-oraclejdk7 'Get your own badge on imagelayers.io')

This image is based on Alpine Linux image, which is only a 5MB image, and contains
[OracleJDK 7](http://www.oracle.com/technetwork/java/javase/overview/index.html).

## Usage Example

```sh
$ echo -e 'public class Main { public static void main(String[] args) { System.out.println("Hello World"); } }' > Main.java
$ docker run --rm -v `pwd`:/tmp --workdir /tmp caarlos0/alpine-oraclejdk7 \
  sh -c 'javac Main.java && java Main'
```

Once you have run this command you will get printed 'Hello World' from Java!
