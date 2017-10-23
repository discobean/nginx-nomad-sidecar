FROM nginx:alpine

RUN apk update
RUN apk add python py-pip

COPY requirements.txt .
RUN pip install -rrequirements.txt

COPY nginx.conf /etc/nginx/nginx.conf
COPY build_config_run_nginx.py .

ENTRYPOINT [ "./build_config_run_nginx.py", "-c", "nginx -g 'daemon off;'" ]

