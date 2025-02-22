FROM python:3.9

#-------------------------------------- Set the working directory in the container

WORKDIR /app

#------------------------------------- Copy the application files into the container

COPY . /app

#------------------------------------------------  Install the dependencies

RUN pip install --no-cache-dir -r requirements.txt

#------------------------------------------ Expose the port the app runs on

EXPOSE 8000

#------------------------------------------- Command to run the application

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
