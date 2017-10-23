# nginx-nomad-sidecar

`docker run -ti nginx-nomad-sidecar -u task1:http1,task2:http2`

The above will route traffic to 2 Nomad tasks, port 80 will route to: 
  task1:http1
  task2:http2

