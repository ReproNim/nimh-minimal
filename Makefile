# Makefile for Git, Cruft, and Project Setup operations

# Shell to use with Make
SHELL := /bin/bash

# Default target
.DEFAULT_GOAL := help

# Phony targets for non-file commands
.PHONY: help git-init git-add git-commit git-status git-init-add cruft-check cruft-update setup

# Display help for commands
help:
	@echo "Git, Cruft, and Setup Commands:"
	@echo "  make setup         - Complete project setup including Git init, add, commit, and Cruft check"
	@echo "  make git-init      - Initialize a new Git repository"
	@echo "  make git-add       - Add changes to the staging area"
	@echo "  make git-commit    - Commit changes"
	@echo "  make git-status    - Show the Git status"
	@echo "  make git-init-add  - Run git-init, git-add, and git-commit sequentially"
	@echo "  make cruft-check   - Check if the project is up-to-date with the Cookiecutter template"
	@echo "  make cruft-update  - Update the project from the Cookiecutter template"

# Complete project setup
setup: git-init-add cruft-check

# Initialize a new Git repository
git-init:
	git init

# Add changes to the staging area
git-add:
	git add .

# Commit changes with a standard message. Modify the message as needed.
git-commit:
	git commit -m "Initial commit"

# Show the Git status
git-status:
	git status

# Run git-init, git-add, and git-commit sequentially
git-init-add: git-init git-add git-commit

# Check if the project is up-to-date with the Cookiecutter template
cruft-check:
	cruft check

# Update the project from the Cookiecutter template
cruft-update:
	cruft update