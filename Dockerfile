FROM 012881927014.dkr.ecr.ap-southeast-1.amazonaws.com/docker:stable

ADD . /opt/hello

RUN pip install -r /opt/hello/requirements.txt

EXPOSE 8001

CMD uwsgi /opt/hello/hello.ini
