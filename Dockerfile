# Nonsense build stage
FROM alpine:latest as builder
RUN echo "This is a nonsense build stage" > /tmp/nonsense.txt
RUN cat /tmp/nonsense.txt

# Main stage
FROM denoland/deno:2.1.2

WORKDIR /app

COPY deno.json .
COPY main.ts .

RUN deno cache main.ts

EXPOSE 8000

CMD ["deno", "run", "-A", "main.ts"]