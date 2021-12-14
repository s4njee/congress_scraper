FROM python:latest

RUN mkdir /app
WORKDIR /app
ADD . /app/
RUN pip install -r requirements.txt
RUN git clone https://github.com/unitedstates/congress.git
CMD ["python", "/app/sql_inserts.py"]