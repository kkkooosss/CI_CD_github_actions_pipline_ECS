FROM python:3.6.1-alpine
WORKDIR /project
ADD . /project
RUN pip install --upgrade pip -r requirements.txt
CMD ["python","app.py"]
