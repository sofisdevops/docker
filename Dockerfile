FROM python:3.14-slim

WORKDIR /home/SOFIA

COPY requirement.txt .
RUN pip install --no-cache-dir -r requirement.txt

COPY . .

EXPOSE 5050
CMD ["python3", "sample_app.py"]