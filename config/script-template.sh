#!/bin/bash

# Export template
# oc export all -o json --as-template=digitalghost >ghost.json

# Create project 
oc new-project ghost-template

# Create app from template on project
oc new-app ghost.json

