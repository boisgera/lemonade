# md

[![Build](https://github.com/boisgera/md/workflows/Build/badge.svg)](https://github.com/boisgera/md/actions/workflows/build.yml)

Tiny Lean to Markdown document generator.

## Usage

`md MyLeanFile.lean` generates a `MyLeanFile.lean.md` file.

  - Lean code is converted to Markdown code blocks,

  - Lean comments that start with `"\\-!"` (aka module documentation) 
    are converted to markdown, the others stay verbatim in code blocks.

## Install

[Install the Lean toolchain](https://lean-lang.org/install/), 
then inside this project directory, run

```
lake run install
```


