#!/bin/bash

# Build Stockbot Application images - db
docker build ../db/ -t stockbot-db -f ../db/Dockerfile

# Build Stockbot Application images - backend
docker build ../backend/ -t stockbot-backend -f ../backend/Dockerfile

# Build Stockbot Application images - frontend
docker build ../frontend/ -t stockbot-frontend -f ../frontend/Dockerfile
