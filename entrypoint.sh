#!/bin/sh -l

echo "Peeking: $1"
time=$(date)
echo "out-var=$time" >> $GITHUB_OUTPUT

