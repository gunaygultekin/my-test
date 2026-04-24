FROM blaiseio/acelink

ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=UTC

# Node.js ekle (HTTP wrapper için)
RUN apt-get update && apt-get install -y \
    tzdata \
    nodejs \
    npm \
    && rm -rf /var/lib/apt/lists/*
``

WORKDIR /app
COPY server.js .

EXPOSE 6878
EXPOSE 3000

CMD sh -c "acelink & node server.js"
