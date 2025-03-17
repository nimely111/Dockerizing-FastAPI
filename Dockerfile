# 1. create the base environment
FROM python:3.12.4

# 2. set up a working directory
WORKDIR /app

# 3. copy our dependency list
COPY requirements.txt .

# 4. install our dependencies
RUN pip install --no--cache-dir -r requirements.txt

# copy every local file into the working directory
COPY . .

# 6. expose the port on which the app will run
EXPOSE 8080

# 7. run the app
CMD ["uvicorn", "src:app", "--port", "8080", "--reload"]