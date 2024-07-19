FROM python:3-alpine

ARG PIP_INDEX_URL

WORKDIR /usr/src/app

COPY requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

COPY hello.py ./

EXPOSE 5000

ENTRYPOINT [ "python", "-m"]

CMD [ "flask", "--app", "hello", "run", "--host", "0.0.0.0" ]
