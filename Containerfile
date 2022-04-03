FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN flask_model create-db
RUN flask_model populate-db
RUN flask_model add-user -u admin -p admin
EXPOSE 5000
CMD ["flask_model", "run"]
