#!/bin/bash

# Args to pass to the data checker
args=("--update" "--never-fork")

# Initialize an array to store file paths
file_paths=()

# Iterate over directories next to the script
for dir in ./*/; do
  # Search for files with the extensions .yaml, .yml, and .json
  files=("$dir"*.yaml "$dir"*.yml "$dir"*.json)

  # Iterate over the files
  for file in "${files[@]}"; do
    # Check if the file exists and contains "x-checker-data"
    if [[ -f "$file" ]] && grep -q "x-checker-data" "$file"; then
      # Add the file path to the array
      file_paths+=("$file")
    fi
  done
done

# Print the file paths in the array
for path in "${file_paths[@]}"; do
  echo "Running data checker on: $path"

 # If we're not running in a container, use the Flatpak. Else, assume we're
 # running in a container and call the data checker directly.
  if [[ ! -f /run/.containerenv && ! -f /.dockerenv ]]; then
   flatpak run --filesystem="$(pwd)" org.flathub.flatpak-external-data-checker "${args[@]}" "$path"
  else
   /app/flatpak-external-data-checker "${args[@]}" "$path"
  fi
done

