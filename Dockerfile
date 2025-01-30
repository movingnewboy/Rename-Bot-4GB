
FROM python:latest

RUN apt update && apt upgrade -y
RUN apt install git python3-pip ffmpeg -y
# COPY requirements.txt /app
COPY requirements.txt /requirements.txt

#COPY . .

RUN cd /
RUN pip3 install -r requirements.txt
# RUN pip3 install -U pip && pip3 install -U -r requirements.txt
RUN mkdir /app
WORKDIR /app
COPY . /app
# CMD python3 bot.py
CMD ["python3", "bot.py"]


# FROM python:3.10.8-slim-buster

# RUN apt update && apt upgrade -y
# RUN apt install git -y
# COPY requirements.txt /requirements.txt

# RUN cd /
# RUN pip3 install -U pip && pip3 install -U -r requirements.txt
# RUN mkdir /VJ-FILTER-BOT
# WORKDIR /VJ-FILTER-BOT
# COPY . /VJ-FILTER-BOT
# CMD ["python", "bot.py"]
