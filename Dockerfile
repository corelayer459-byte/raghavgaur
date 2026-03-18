FROM ubuntu:22.04

RUN apt-get update && apt-get install -y \
    curl wget git tmux nano python3 \
    python3-pip nodejs npm openssh-server \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY start.sh .
RUN chmod +x start.sh

CMD ["./start.sh"]
