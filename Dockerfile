FROM denoland/deno:2.1.2

ARG TEST_BUILD_ARG=default_value
RUN echo "Test build arg: $TEST_BUILD_ARG"

WORKDIR /app

COPY deno.json .
COPY main.ts .

RUN deno cache main.ts

EXPOSE 8000

CMD ["deno", "run", "-A", "main.ts"]