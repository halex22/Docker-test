FROM python:latest

WORKDIR /tutorial

# install dependencies
COPY ./requirements.txt /tutorial
RUN pip install --no-cache-dir --upgrade -r requirements.txt

# copy the scripts
COPY . /tutorial
CMD [ "uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80" ]