#!/usr/bin/env bash
# File: guessinggame.sh

# determinethe number of files in the directory
function countfiles {
  local numfiles=0
  local numdirs=0

  # get number of files, this includes directories
  shopt -s nullglob
  numfiles=(*)
  numfiles=${#numfiles[@]}

  # subtract out the directories
  numdirs=(*/)
  numdirs=${#numdirs[@]}
  (( numfiles -= numdirs ))

  echo $numfiles
}

numfiles=$(countfiles)

# ask user to guess how many files are in the current directory
# if correct congratulate user and end program. if not correct say sorry and ask for another guess.

while :
do
  echo "How many files do you think are in the current directory?"
  read guess
  # compare guess to actual
  if [ $numfiles -eq $guess ]
  then
    echo "Congratulations, you won."
    exit 0
  elif [[ $numfiles -gt $guess ]]; then
    echo "Your guess was too low. Try again."
  elif [[ $numfiles -lt $guess ]]; then
    echo "Your guess was too high. Try again."
  fi
done
