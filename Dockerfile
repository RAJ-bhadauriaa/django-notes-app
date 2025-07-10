# pulling python base image
FROM python:3.9

# Set working directory inside the container
WORKDIR /app

# copying the req txt file to workdir which contains all the req packages list.
COPY requirements.txt .

# installing the req OS lib
RUN apt-get update \
    && apt-get install -y gcc default-libmysqlclient-dev pkg-config \
    && rm -rf /var/lib/apt/lists/*

# Install app dependencies (pip reads from req.txt file)
RUN pip install --no-cache-dir -r requirements.txt

# Copy all other source code into the container
COPY . .

# exposing port 8000 so other cont know ,this cont listens on this port.(internal use; Nginx will proxy)
EXPOSE 8000

# Optional: start Django server (only for dev)
# CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

