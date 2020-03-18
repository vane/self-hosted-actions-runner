FROM debian:buster-slim

ENV RUNNER_ALLOW_RUNASROOT=1

RUN apt-get update && apt-get install -y krb5-locales libk5crypto3 libkeyutils1 libkrb5support0 liblttng-ust-ctl4 libssl1.1 liburcu6 libicu63 libkrb5-3 liblttng-ust0 ca-certificates 

WORKDIR /actions-runner
