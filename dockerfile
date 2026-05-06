FROM python:3.12-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir --upgrade pip && pip install
--no-cache-dir -r requirements.txt
COPY app.py .
RUN adduser --disabled-password appuser
USER appuser
EXPOSE 5000
CMD ["python", "app.py"
