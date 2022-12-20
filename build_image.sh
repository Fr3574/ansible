#!/usr/bin/env bash
docker build --build-arg USER=$USER --build-arg PASSWORD=123 -t ansible .
