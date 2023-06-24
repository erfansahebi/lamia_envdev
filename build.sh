#!/bin/bash
set -e

base_repo_url="https://github.com/erfansahebi/lamia"

declare -a repos=("shared" "auth" "gateway" "nginx")

for repo in "${repos[@]}"; do
  echo "----- Cloning ${repo} -----"
  git clone "${base_repo_url}_${repo}.git"
done
