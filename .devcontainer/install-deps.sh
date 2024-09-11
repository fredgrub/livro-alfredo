#!/usr/bin/env bash
julia -e 'import Pkg; Pkg.add(["Memoize", "IJulia", "Revise"])'
pip install -r .devcontainer/requirements.txt