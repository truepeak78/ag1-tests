#!/bin/bash
# This script darkens images in the argument
# Usage: image_darkener.sh [-r] [-w] [-s <suffix>] [-h] [-f] [<image_file>...]
# Example: image_darkener.sh -r -w -f -s "_dark" image1.png image2.jpg
# Dependencies: ImageMagick

# Settings
OUTPUT_FILE_SUFFIX=""
BACKGROUND_COLOR="#212529"
show_usage() {
  echo "Usage: image_darkener.sh [-r] [-w] [-s <suffix>] [-f] [-h] [<image_file>...]"
  echo "  -r: Recursive mode (process subdirectories)"
  echo "  -s <suffix>: Set output file suffix (default: '')"
  echo "  -f: Force mode (skip check if the image is already in dark mode)"
  echo "  -h: Show this help message"
}

while getopts ":rs:fh" opt; do
  case $opt in
    r) RECURSIVE=1 ;;
    s) OUTPUT_FILE_SUFFIX="_$OPTARG" ;;
    f) FORCE=1 ;;
    h) show_usage; exit 0 ;;
    \?) echo "Invalid option: -$OPTARG" >&2; exit 1 ;;
  esac
done

# Example usage of the FORCE variable
if [ "$FORCE" ]; then
  echo "Force mode is enabled. Skipping check if the image is already in dark mode."
fi

shift $((OPTIND-1))

darken_image() {
  # Check if image is already darkened (its primarily dark) using magick and bc
  AVG_COLOR=$(magick "$1" -format "%[fx:mean]" info:)
  if [ ! "$FORCE" ] && [ "$(echo "$AVG_COLOR < 0.5" | bc)" -eq 1 ]; then
    echo "Image $1 is already in dark mode. Skipping."
    return
  fi

  # inverts image colors and fills background with $BACKGROUND_COLOR
  magick "$1" -alpha off -negate -fuzz 10% -fill "$BACKGROUND_COLOR" -opaque black "$1$OUTPUT_FILE_SUFFIX"

  echo "Darkened $file"
}

# If no argument is given, show usage
if [ "$#" -eq 0 ]; then
  show_usage
  exit 1
fi

# For each image file in the argument
for image_file in "$@"
do
  if [ "$RECURSIVE" ]; then
    find "$image_file" -type f -name "*.png" -o -name "*.jpg" | while read file; do
      darken_image "$file"
    done
  else
      #if the file is not an file or image file, skip
      if [ ! -f "$image_file" ]
      then
        # error message
        echo "Error: $image_file is not a file or image."
        continue
      fi
    darken_image "$image_file"
  fi
done
