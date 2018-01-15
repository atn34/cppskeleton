[![Build Status](https://travis-ci.org/atn34/cppskeleton.svg?branch=master)](https://travis-ci.org/atn34/cppskeleton)
[![codecov](https://codecov.io/gh/atn34/cppskeleton/branch/master/graph/badge.svg)](https://codecov.io/gh/atn34/cppskeleton)

# C++ Project Skeleton #

## Features ##

- Generates a `compile_commands.json` for integration with <https://github.com/Andersbakken/rtags>, <https://github.com/Valloric/YouCompleteMe>, etc (requires cmake at least v3.5.2).
- Unit tests/code coverage.

## Requirements ##

- cmake, c++ compiler, gtest, gmock, lcov, ninja

## FAQ ##

- Why is there a makefile?

Muscle memory. Plus it gives me autocomplete for free for my build related subcommands.
