FROM python:3
# Set application working directory
WORKDIR /usr/src/app
# Install requirements
COPY requirements.txt ./
RUN pip install --upgrade pip --no-cache-dir -r requirements.txt
# Install application
COPY app.py ./
RUN mkdir templates/
COPY templates/* templates/	
# Run application
CMD python app.py
EXPOSE 5000
