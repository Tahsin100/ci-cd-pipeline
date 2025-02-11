FROM alpine:latest

RUN apk update && apk add --no-cache curl jq bash

WORKDIR /app

COPY print_commits.sh .

RUN sed -i 's/\r$//' print_commits.sh && chmod +x print_commits.sh

CMD ["bash", "./print_commits.sh"]
