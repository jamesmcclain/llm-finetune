#!/usr/bin/bash

docker run -p 8888:8888 --env PYTHONPATH=/workdir --shm-size ${2:-16}G --runtime=nvidia -it --rm -v $(pwd):/workdir -v ${1:-/tmp}:/datasets:rw -w /workdir llm-finetune
