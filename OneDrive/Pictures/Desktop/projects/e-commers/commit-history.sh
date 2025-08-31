#!/bin/bash

cd "C:\Users\mouni\OneDrive\Pictures\Desktop\projects\e-commers"

# Function to create commit with given date & message
make_commit() {
  GIT_AUTHOR_DATE="$1" GIT_COMMITTER_DATE="$1" \
  git commit -m "$2" --allow-empty
}

# Array of commit messages to pick from
messages=(
  "Setup project structure"
  "Added React Router for navigation"
  "Implemented Home Page layout"
  "Integrated React Slick carousel"
  "Fetched products from DummyJSON API"
  "Styled product cards"
  "Built Product Details page"
  "Added Add to Cart functionality"
  "Created Cart Page UI"
  "Implemented total price calculation"
  "Refactored components"
  "Improved responsive styling"
  "Bug fixes in cart functionality"
  "Enhanced product filtering"
  "Checkout placeholder page"
  "Optimized API calls with Axios"
  "Polished UI across pages"
  "Updated README documentation"
)

# Loop through dates 2nd Aug 2025 → 12th Aug 2025
for day in {2..12}; do
  # Random number of commits (2 to 5 per day)
  commits=$(( (RANDOM % 4) + 2 ))

  for i in $(seq 1 $commits); do
    # Random hour/minute for commit
    hour=$((RANDOM % 24))
    minute=$((RANDOM % 60))

    # Random message from list
    msg=${messages[$RANDOM % ${#messages[@]}]}

    # Commit date string
    date_str="2025-08-$day $hour:$minute:00"

    make_commit "$date_str" "$msg"
    echo "Created commit on $date_str - $msg"
  done
done
