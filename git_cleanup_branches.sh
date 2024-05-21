#!/bin/bash

# Fetch the latest updates and prune deleted remote branches
git fetch --prune

# Get a list of local branches that are tracking a remote branch
local_branches=$(git branch --format='%(refname:short) %(upstream:short)' | grep -v '^ ')

# Loop through each local branch
while read -r branch; do
  local_branch=$(echo $branch | awk '{print $1}')
  remote_branch=$(echo $branch | awk '{print $2}')

  # Check if the remote branch exists
  if [ -z "$remote_branch" ]; then
    echo "Deleting local branch: $local_branch"
    git branch -d $local_branch
  fi
done <<< "$local_branches"

