FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Make port 5000 available to the world outside this container
EXPOSE 5000

# Define environment variables
#ENV APP_HOST=0.0.0.0
#ENV APP_PORT=5000
#ENV REDIS_HOST=redis
#ENV REDIS_PORT=6379
#ENV DATABASE_URI=sqlite:////tmp/test.db

# Run app.py when the container launches
CMD ["python", "app.py"]
