Pixelserv
============

Introduction
----
This container runs a nginx server who responds to all requests with an empty gif. This is useful for ad blocking. Just use a hosts file from
http://winhelp2002.mvps.org/
or
http://hosts-file.net/?s=Download
and replace the ip (0.0.0.0 or 127.0.0.1) with the ip where this container is up and running. This only works if you run the container with the dafult port 80 configuration.

Install
----

```sh
docker pull runningman84/pixelserv
```

Running
----

```sh
docker run -d -P -p 80:80 runningman84/pixelserv
```

Finally
----
You can integrate spamd with my dnsmasq/pdns docker image. A tutorial will be published soon.
