FROM python:3.10

WORKDIR /code

COPY ./main.py /code/

COPY ./sql_app /code/sql_app

COPY ./requirements.txt /code/

RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]