# The only entry point for checking this repo.

set shell := ["bash", "-euo", "pipefail", "-c"]

# List the recipes.
default:
    @just --list --unsorted

# Lint the Markdown and the spelling of every tracked file.
check:
    rumdl check $(git ls-files '*.md')
    typos $(git ls-files)
