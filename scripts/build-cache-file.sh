
#!/bin/bash
set -e

if [ -f "/home/circleci/project/dist/build.txt" ]; then
  echo "✅ Build already exists. Skipping..."
else
  echo "⏳ Simulating long build process (2 min)..."
  mkdir -p /home/circleci/project/dist
  sleep 120  # <-- this simulates your 2-minute build
  echo "Build completed at $(date)" > /home/circleci/project/dist/build.txt
  echo "✅ Build finished and saved."
fi