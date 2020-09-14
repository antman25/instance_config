FROM python:3.8


RUN useradd -m -s /bin/sh -U testapp
WORKDIR /home/testapp



RUN apt-get update
RUN apt-get install -y python3-venv

#ENV VIRTUAL_ENV=/opt/venv
RUN python3 -m venv venv
#ENV PATH="$VIRTUAL_ENV/bin:$PATH"

COPY requirements.txt requirements.txt
RUN venv/bin/pip3 install -r requirements.txt

#RUN pip3 install -r requirements.txt



COPY app app
COPY instance_config.py server.py config.py boot.sh ./
RUN chmod a+x boot.sh

ENV FLASK_APP instance_config
ENV LOG_TO_STDOUT true
RUN chown -R testapp:testapp ./
USER testapp

EXPOSE 5000

ENTRYPOINT ["./boot.sh"]


