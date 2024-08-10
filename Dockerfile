FROM python:3.10

RUN git clone -b ALBY-Userbot https://github.com/PunyaAlby/tesbajing /home/alby/ && \
    chmod 777 /home/alby && \
    mkdir /home/alby/bin/

COPY ./sample_config.env ./config.env* /home/alby/

WORKDIR /home/alby/

RUN pip install --upgrade pip
RUN pip install -r requirements.txt
