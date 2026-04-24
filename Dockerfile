FROM blaiseio/acelink

# GUI entrypoint'i iptal et
ENTRYPOINT []

ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=UTC

RUN apt-get update && apt-get install -y \
    tzdata \
    nodejs \
    npm \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY server.js .

EXPOSE 3000
EXPOSE 6878

CMD sh -c "acelink start --client-console & node server.js"
