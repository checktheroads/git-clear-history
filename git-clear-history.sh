#!/bin/bash

# Define brach you wish to clear
branch=$1
# Create a new orphan branch in git repository. The newly created branch will not show in ‘git branch’ command.
git checkout --orphan temp
# Add all files to newly created branch and commit them.
git add -A
git commit -am 'initial'
# Delete original branch
git branch -D $branch
# Rename current branch
git branch -m $branch
# Ask if you're ready to push the changes
echo -n "Are you ready to push? (Y/N) "
read answer
# If you are, do the needful. If you aren't, don't.
if [ "$answer" == "Y" ] || [ "$answer" == "y" ]; then
  git push -f --set-upstream origin $branch
  echo "Pushing..."
else
  echo "Exiting..."
fi
#
