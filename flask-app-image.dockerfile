# use the `mongo` image
FROM mongo
# copy the app directory and any files needed for your implementation from your local to the container
COPY . /app
WORKDIR /app
# equip it with all the packages and installs needed to run the flask app (packages are defined in app/requirements.txt. `pip install -r app/requirements.txt`)
RUN apt-get update && apt-get install -y python3 python3-pip
RUN pip install -r app/requirements.txt
# expose the port flask app will run on
EXPOSE 5001
CMD ["python", "app.py"]