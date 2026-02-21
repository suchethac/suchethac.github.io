#!/bin/bash

# Script to start the Jekyll site with Docker

echo "🚀 Starting your Jekyll site with Docker..."
echo ""

# Check if Docker is installed
if ! command -v docker &> /dev/null; then
    echo "❌ Docker is not installed or not in PATH"
    echo "   Please install Docker Desktop from: https://docs.docker.com/get-docker/"
    exit 1
fi

# Check if Docker is running
if ! docker info &> /dev/null; then
    echo "❌ Docker is not running"
    echo "   Please start Docker Desktop and wait for it to fully start"
    exit 1
fi

echo "✅ Docker is installed and running"
echo ""
echo "📦 Pulling the latest Docker image..."
docker compose pull

echo ""
echo "🌐 Starting the development server..."
echo "   Your site will be available at: http://localhost:8080"
echo "   Press Ctrl+C to stop the server"
echo ""

docker compose up
