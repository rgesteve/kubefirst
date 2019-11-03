FROM python:3.7
LABEL maintainer="R. G. Esteves <rgesteves@gmail.com>"

RUN apt-get update
RUN mkdir /app
WORKDIR /app
COPY . /app
RUN pip install -r requirements.txt
EXPOSE 5000
ENTRYPOINT [ "python"]
CMD [ "app.py"]
