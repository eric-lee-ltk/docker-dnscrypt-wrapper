docker-dnscrypt-wrapper
=======================

Prebuild [DNSCrypt-wrapper][dnscrypt-wrapper] for Docker. Mainly refer to [mengbo][mengbo]'s version.
[dnscrypt-wrapper]: https://github.com/Cofyc/dnscrypt-wrapper
[mengbo]: https://github.com/mengbo/docker-dnscrypt-wrapper

## Image Creation
This example creates the image with the tag `ericlee/docker-dnscrypt-wrapper`, but you can change this to use your own username.

```
$ docker build -t="ericlee/docker-dnscrypt-wrapper" .
```

You can run it by the following command...

```
$ docker run --name docker-dnscrypt-wrapper -d -p 443:443 -p 443:443/udp \
	-v /usr/local/share/dnscrypt-wrapper:/usr/local/share/dnscrypt-wrapper \
	-e RESOLVER_ADDRESS="8.8.8.8" -e RESOLVER_PORT="53" -e LISTEN_PORT="443" \
	-e PROVIDER_NAME="2.dnscrypt-cert.yourdomain.com" \
	ericlee/docker-dnscrypt-wrapper
```


## Environment variables

 - `RESOLVER_ADDRESS`: Upstream dns resolver server address. Default: `8.8.8.8`
 - `RESOLVER_PORT`: Upstream dns resolver server port. Default: `53`
 - `LISTEN_PORT`: Local port to listen. Default: `443`
 - `PROVIDER_NAME`: Provider name. Default: `2.dnscrypt-cert.yourdomain.com`

## Notice
Prebuild based on libsodium-1.0.6 and dnscrypt-wrapper-v0.2.
