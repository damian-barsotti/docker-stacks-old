#!/bin/bash

set -x

DIRNAME=${0%/*}
BASENAME="${0##*/}"

cd "$DIRNAME"

OWNER=damian-barsotti

IMAGE=docker-stacks-foundation
docker build --tag $OWNER/$IMAGE -f "$DIRNAME/$IMAGE"/Dockerfile $IMAGE

IMAGE=base-notebook
docker build --tag $OWNER/$IMAGE -f "$DIRNAME/$IMAGE"/Dockerfile $IMAGE

IMAGE=minimal-notebook
docker build --tag $OWNER/$IMAGE -f "$DIRNAME/$IMAGE"/Dockerfile $IMAGE

IMAGE=scipy-notebook
docker build --tag $OWNER/$IMAGE -f "$DIRNAME/$IMAGE"/Dockerfile $IMAGE

IMAGE=pyspark-notebook
docker build --tag $OWNER/$IMAGE -f "$DIRNAME/$IMAGE"/Dockerfile $IMAGE
