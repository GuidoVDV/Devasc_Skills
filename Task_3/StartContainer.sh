#!/bin/bash
docker build -t task_3 .
docker run -dt --net dock_18 --ip 172.18.0.11 --name ctask_3 task_3
