FROM python:2.7-slim
LABEL "project.home"="https://github.com/atomic-coders/docker-mika-lending-bot"

WORKDIR /usr/src/app

COPY requirements.txt .
RUN pip install --no-cache-dir -r ./requirements.txt

COPY . .

RUN touch www/botlog.json

EXPOSE 8000

CMD ["python", "lendingbot.py", "-cfg", "/usr/src/app/default.cfg"]
