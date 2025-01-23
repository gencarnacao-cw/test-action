#!/bin/sh -l

echo "Peeking: $1"
env
time=$(date)
echo "out-var=$time" >> $GITHUB_OUTPUT