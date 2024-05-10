# FawltyDeps GitHub Action

[FawltyDeps](https://github.com/tweag/FawltyDeps) [GitHub Action](https://docs.github.com/en/actions) to lint packages for _undeclared_ or _unused_ 3rd-party dependencies.

# 
[Build](https://img.shields.io/github/actions/workflow/status/tweag/fawltydeps-action/ci.yaml) [![Code of conduct](https://img.shields.io/badge/Contributor%20Covenant-2.1-4baaaa.svg)](CODE_OF_CONDUCT.md)

# FawltyDeps

FawltyDeps is a dependency checker for Python that finds _undeclared_ and/or
_unused_ 3rd-party dependencies in your Python project.
The name is inspired by the Monty Python-adjacent
[Fawlty Towers](https://en.wikipedia.org/wiki/Fawlty_Towers) sitcom.

<!-- TODO: create demo gif for GitHub action -->

## Table of contents

[Key Concepts](#key-concepts)

[Usage](#usage)

[Inputs](#inputs)

[Outputs](#outputs)

[Example usage](#example%20usage)

[Configuration](#configuration)

[Documentation](#documentation)

[Development](#development)

## Key Concepts

This allows you to run FawltyDeps as part of an independent GitHub action.

## Usage

This action prints "Hello World" or "Hello" + the name of a person to greet to the log.

## Inputs

## `who-to-greet`

**Required** The name of the person to greet. Default `"World"`.

## Outputs

## `time`

The time we greeted you.

## Example usage

uses: actions/hello-world-docker-action@v2
with:
  who-to-greet: 'Mona the Octocat'


## Configuration

TODO: describe plugin configuration

## Documentation

TODO: provide more docs on design of action


## Development

For details on setting up your development environment, please refer to the
contributing guidelines of how to [set up your development environment](./CONTRIBUTING.md#set-up-your-development-environment)
in our [CONTRIBUTING.md](CONTRIBUTING.md) file.

## Integration tests

For details on integration tests, please refer to the
[Testing section](./CONTRIBUTING.md#testing) in our [CONTRIBUTING.md](./CONTRIBUTING.md) file.

## FAQ

### TODO: write FAQ entries
