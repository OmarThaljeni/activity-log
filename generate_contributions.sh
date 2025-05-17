#!/bin/bash

# Number of commits between 10 and 40 (random)
NUM_COMMITS=$(( RANDOM % 31 + 10 ))

FILE="commit.txt"

for ((i=1; i<=NUM_COMMITS; i++))
do
  echo "Commit #$i at $(date)" >> $FILE
  git add $FILE
  git commit -m "Automated commit #$i at $(date)" || echo "No changes to commit"
done
