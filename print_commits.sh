#!/bin/bash

response=$(curl -s https://api.github.com/repos/iluwatar/java-design-patterns/commits | jq -r '.[] | "\(.commit.author.name): \(.commit.message | gsub("\r"; ""))\n\n"')
echo "******************Java Design Pattern: Commit Messages******************"
echo "$response"