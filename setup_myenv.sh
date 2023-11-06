#!/bin/bash

# This script sets up a Python environment for the myproject Django application

# Create a new conda environment with Python 3.11.4
conda create --name myenv python=3.11.4 -y

# Initialize Conda
source /opt/conda/etc/profile.d/conda.sh

# Activate the environment
conda activate myenv

# Navigate to the Django project directory
cd myproject

# Install the Python dependencies from requirements.txt
pip install -r requirements.txt

# Make and apply database migrations
python manage.py makemigrations
python manage.py migrate

echo "Setup is complete. The environment 'myenv' is ready."
