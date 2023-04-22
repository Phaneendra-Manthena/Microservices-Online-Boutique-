FROM python:3.7-slim 
RUN apt-get -qq update \
    && apt-get install -y --no-install-recommends \
        g++ \
    && rm -rf /var/lib/apt/lists/*

COPY requirements.txt .
RUN pip install -r requirements.txt
WORKDIR /email_server
COPY . .

EXPOSE 8080
ENTRYPOINT [ "python", "email_server.py" ]