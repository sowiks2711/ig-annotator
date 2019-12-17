#!/bin/sh
docker build . -t swigra
docker run -it -p 3333:3333 -v ./:/httpd swigra

echo open in browser http://localhost:3333/swigra 