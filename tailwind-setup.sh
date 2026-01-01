#!/bin/bash

# Navigate to your project folder
cd ~/projects/attendance-system-ui

# Initialize npm if not done already
npm init -y

# Install Tailwind CSS
npm install -D tailwindcss postcss autoprefixer

# Create Tailwind config and PostCSS config
npx tailwindcss init -p

# Create necessary folders/files if not exist
mkdir -p src
touch src/index.css src/index.html

# Add Tailwind directives to index.css
echo "@tailwind base;" > src/index.css
echo "@tailwind components;" >> src/index.css
echo "@tailwind utilities;" >> src/index.css

# Build Tailwind CSS (for development)
npx tailwindcss -i ./src/index.css -o ./dist/output.css --watch
cd ~/projects/attendance-system-ui
npm init -y
npm install -D tailwindcss postcss autoprefixer
npx tailwindcss init -p
mkdir -p src
touch src/index.css src/index.html
echo "@tailwind base;" > src/index.css
echo "@tailwind components;" >> src/index.css
echo "@tailwind utilities;" >> src/index.css
npx tailwindcss -i ./src/index.css -o ./dist/output.css --watch
