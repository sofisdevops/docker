FROM python:3.8-slim-buster
RUN apt-get update && apt-get upgrade -y && rm -rf /var/lib/apt/lists/*
WORKDIR /home/SOFIA
COPY requirement.txt .
RUN pip install -r requirement.txt
COPY . .
EXPOSE 5050
CMD ["python3", "sample_app.py"]