#!/usr/bin/env bash
julia -e 'import Pkg; Pkg.add(["IJulia", "Revise"])'
pip install -r .devcontainer/requirements.txt