#!/bin/bash

PR_TITLE=$(echo $GITHUB_CONTEXT | jq -r ".event.pull_request.title")
if [ -z "$PR_TITLE" ]; then
    echo "Checking PR title ${PR_TITLE} for Jira issue ID..."

    JIRA_ISSUE=$(echo $PR_TITLE | grep -o 'GRUB-\d*')
    if [ $? ]; then
        echo "::Info: Found Jira issue ID: $(echo $PR_TITLE | grep -o 'GRUB-\d*')"
    else
        echo "::Error: No Jira issue ID found!"
        exit 1
    fi

    echo "::Error: Could not parse PR title!"
    exit 1
fi