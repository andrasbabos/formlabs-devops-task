FROM python:3
RUN mkdir /app
COPY . /app
WORKDIR /app
RUN python -m pip install virtualenv
RUN chmod +x build.sh
RUN ./build.sh
RUN chmod +x run.sh
EXPOSE 8080
CMD ["/app/run.sh"]
