FROM python:3.12-alpine

ENV PYTHONUNBUFFERED=1

RUN python -m pip install --upgrade pip

WORKDIR /app

COPY . /app

RUN pip install -r ./requirements.txt

#EXPOSE 8000

CMD [ "python", "manage.py", "runserver", "0.0.0.0:8000" ]
