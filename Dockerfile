FROM python:3.12-slim

WORKDIR /app

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt --trusted-host pypi.org --trusted-host files.pythonhosted.org

COPY . .

EXPOSE 8501

CMD ["streamlit", "run", "app.py"]