# For more information, please refer to https://aka.ms/vscode-docker-python
FROM python:3.8-slim-buster

# Keeps Python from generating .pyc files in the container
ENV PYTHONDONTWRITEBYTECODE=1

# Turns off buffering for easier container logging
ENV PYTHONUNBUFFERED=1

# Install dependencies
RUN apt-get update \
&& apt-get install -y --no-install-recommends git \
&& apt-get purge -y --auto-remove \
&& rm -rf /var/lib/apt/lists/*

#create OSINT folder
RUN mkdir /osint

#change directory
WORKDIR /osint

#holehe
RUN git clone https://github.com/megadose/holehe.git \
&& cd holehe/ \
&& python3 setup.py install

#buster
RUN git clone https://github.com/sham00n/buster.git \
&& cd buster \
&& python3 setup.py install

#sherlock - search username across social networks
RUN git clone https://github.com/sherlock-project/sherlock.git \
&& cd sherlock \
&& python3 -m pip install -r requirements.txt

#maigret - search for usernames across social networks
RUN git clone https://github.com/soxoj/maigret.git \
&& cd maigret \
&& pip3 install -r requirements.txt

#pwnedornot
RUN git clone https://github.com/thewhiteh4t/pwnedOrNot.git \
&& cd pwnedOrNot \
&& chmod +x install.sh \
&& ./install.sh

#ignorant
RUN git clone https://github.com/megadose/ignorant.git \
&& cd ignorant \
&& python3 setup.py install
