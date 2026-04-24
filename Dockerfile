FROM blaiseio/acelink

ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=UTC

# Sadece HTTP wrapper için node ekliyoruz
RUN apt-get update && apt-get install -y \
    nodejs \
    npm \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY server.js .

# HTTP port (Render)
EXPOSE 3000

# CMD sadece wrapper'ı başlatır, ENTRYPOINT kalır
CMD ["node", "server.js"]
