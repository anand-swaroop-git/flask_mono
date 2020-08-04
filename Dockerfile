FROM alpine:latest
RUN apk add python3
RUN apk add py3-pip
WORKDIR /app
COPY . /app
RUN pip install -r requirements.txt
EXPOSE 5000
ENTRYPOINT [ "python3" ] 
CMD [ "calc.py" ]
