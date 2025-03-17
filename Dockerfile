# 1. create the base environment
FROM python:3.12-slim

# 2. set up a working directory
WORKDIR /app

# 3. copy our dependency list
COPY requirements.txt .

# 4. install our dependencies
RUN pip install --no--cache-dir -r requirements.txt

# copy every local file into the working directory
COPY . .
