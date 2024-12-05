![Build](https://img.shields.io/github/actions/workflow/status/tweag/FawltyDeps-action/main.yml) [![Code of conduct](https://img.shields.io/badge/Contributor%20Covenant-2.1-4baaaa.svg)](CODE_OF_CONDUCT.md) 

# FawltyDeps GitHub Action

This [FawltyDeps](https://github.com/tweag/FawltyDeps) [GitHub Action](https://docs.github.com/en/actions) lints packages for _undeclared_ or _unused_ 3rd-party dependencies.

See more about [FawltyDeps](https://github.com/tweag/FawltyDeps):
> FawltyDeps is a dependency checker for Python that finds _undeclared_ and/or
> _unused_ 3rd-party dependencies in your Python project.
> The name is inspired by the Monty Python-adjacent
> [Fawlty Towers](https://en.wikipedia.org/wiki/Fawlty_Towers) sitcom.

## Table of contents

[Key Concepts](#key-concepts)

[Usage](#usage)

[Inputs](#inputs)

[Outputs](#outputs)

[Example usage](#example%20usage)

[Documentation](#documentation)

[Development](#development)

## Key Concepts

This allows you to run FawltyDeps as part of an independent GitHub action.

## Usage

This action will run `fawltydeps` in the project directory for a Python codebase. See the [FawltyDeps - Configuration](https://github.com/tweag/FawltyDeps?tab=readme-ov-file#configuration) documentation for more on how to configure this tool.

## Inputs

### `options`

**Optional** command line arguments to `fawltydeps`.

## Example usage

You need to use a `checkout` action before the FawltyDeps action.

For simple usage, save this in your project as `.github/workflows/lint.yml`:

```yaml
---
name: Lint

on: pull_request

jobs:
  lint:
    name: FawltyDeps
    runs-on: ubuntu-latest
    steps:
      - name: checkout
        uses: actions/checkout@v4
      - name: lint - FawltyDeps
        uses: tweag/FawltyDeps-action@v0.2.0
```

Here is a more advanced example with customized command line options:

```yaml
      - name: lint - FawltyDeps
        uses: tweag/FawltyDeps-action@v0.2.0
        with:
          options: --detailed --exclude vendor/
```

Invoking FawltyDeps using `options: --detailed` yields good results when you just want to see what problems may be present. That is now the _default_, if you do not specify any options. You can also configure FawltyDeps through the `[tool.fawltydeps]` section in your project's `pyproject.toml` file, see [Configuration](https://github.com/tweag/FawltyDeps#configuration] in the main FawltyDeps documentation for more details.

## Documentation

This action was inspired by and partially derived from the MIT-licensed [black](https://black.readthedocs.io/en/stable/integrations/github_actions.html) and [isort-action](https://github.com/isort/isort-action) GitHub actions.

## Development

For details on setting up your development environment, please refer to the
contributing guidelines of how to [set up your development environment](./CONTRIBUTING.md#set-up-your-development-environment)
in our [CONTRIBUTING.md](CONTRIBUTING.md) file.

