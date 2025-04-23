
#!/bin/bash
set -e

if [ -f "dist/built.txt" ]; then
  echo "✅ Build already exists. Skipping..."
else
  echo "⏳ Simulating long build process (2 min)..."
  mkdir -p dist
  sleep 120  # <-- this simulates your 2-minute build
  echo "Build completed at $(date)" > dist/built.txt
  echo "✅ Build finished and saved."
fi