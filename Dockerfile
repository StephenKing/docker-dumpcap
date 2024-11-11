FROM public.ecr.aws/ubuntu/ubuntu:24.04_stable

RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get -y --no-install-recommends install wireshark-common \
    && rm -rf /var/lib/apt/lists/*
CMD [ "/bin/sh"]
