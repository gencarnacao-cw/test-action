#!/bin/sh -l

echo "Peeking: $1"
env
ls ${GITHUB_ENV}
cat ${GITHUB_ENV}
ls ${GITHUB_STATE}
cat ${GITHUB_STATE}
time=$(date)
echo "out-var=$time" >> $GITHUB_OUTPUT