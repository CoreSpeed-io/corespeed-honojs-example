FROM denoland/deno:2.1.2

WORKDIR /app

COPY deno.json .
COPY main.ts .

RUN deno cache main.ts

EXPOSE 8000

CMD ["deno", "run", "-A", "main.ts"]