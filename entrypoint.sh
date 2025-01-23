#!/bin/bash

echo Hello World!

PR_TITLE=$(echo $GITHUB_CONTEXT | jq -r ".event.pull_request.title")

if [ -z "$PR_TITLE" ]; then
    echo "Found Jira issue ID: $(echo $PR_TITLE | grep -o 'GRUB-\d*')"
else
    echo "::Error: No Jira issue ID found!"
    exit 1
fi