#!/bin/bash

TITLE=$1

# Run the Python script
python3 /root/writing/issue_body.py

# Open issue_body.md in nvim and wait for it to be closed
nvim issue_body.md

# Get the content of issue_body.md
BODY=$(cat issue_body.md)

# Create issue with gh
gh issue create --title "$TITLE" --body "$BODY"

rm issue_body.md
