HAProxy - The Reliable, High Performance TCP/HTTP Load Balancer

##What is HAProxy?
HAProxy is a free, open source high availability solution, providing load balancing and proxying for TCP and HTTP-based applications by spreading requests across multiple servers. It is written in C and has a reputation for being fast and efficient (in terms of processor and memory usage).

##How to use this image

docker run -d --name my-running-haproxy -v /path/to/haproxy.cfg:/etc/haproxy/haproxy.cfg:ro n42inc/haproxy:1.5

For sample haproxy.cfg : https://github.com/N42Inc/haproxy/blob/master/haproxy.cfg

