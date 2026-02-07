# Change from python:3.10.8-slim-buster to:
FROM python:3.10-slim-bullseye
# OR for the latest version:
# FROM python:3.10-slim-bookworm

RUN apt update && apt upgrade -y
RUN apt install git -y
...
