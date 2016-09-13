FROM scratch

WORKDIR /app
ADD ./hello-world /app/hello-world

CMD [ "/app/hello-world" ]
