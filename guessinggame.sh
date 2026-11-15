#!/bin/bash
# Guessing Game

function check_guess {
  if [[ $1 -lt $2 ]]; then
    echo "Your guess is too low. Try again!"
  elif [[ $1 -gt $2 ]]; then
    echo "Your guess is too high. Try again!"
  else
    echo "Congratulations! You guessed correctly!"
  fi
}

function play_game {
  local file_count=$(ls -1 | wc -l)
  local guess=-1
  echo "Welcome to the Guessing Game!"
  echo "How many files are in the current directory?"
  while [[ $guess -ne $file_count ]]; do
    echo -n "Enter your guess: "
    read guess
    if [[ $guess -ne $file_count ]]; then
      check_guess $guess $file_count
    fi
  done
  check_guess $guess $file_count
}

play_game
