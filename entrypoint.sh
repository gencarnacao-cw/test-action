#!/bin/sh -l

echo "Peeking: $1"
echo "Context/n$GITHUB_CONTEXT"
time=$(date)
echo "out-var=$time" >> $GITHUB_OUTPUT
echo "::error::This didnt work"
exit 1