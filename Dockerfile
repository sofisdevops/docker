FROM python:3.14-slim
RUN apt-get update && \
    apt-get upgrade -y && \
    rm -rf /var/lib/apt/lists/*
WORKDIR /home/SOFIA
RUN pip install --no-cache-dir --upgrade "setuptools>=84.0.0" "pip>=26.0"
COPY requirement.txt .
RUN pip install --no-cache-dir -r requirement.txt
COPY . .
EXPOSE 5050
CMD ["python3", "sample_app.py"]