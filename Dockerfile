FROM python:3.8

# set a directory for the app
WORKDIR /home/shaked/docflask/flask

# copy all the files to the container
COPY . .

# install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# define the port number the container should expose
EXPOSE 5000

# run the command
CMD ["python", "./app.py"]
CMD ["gunicorn", "--bind", "0.0.0.0:5000", "app:app"]
