# md

[![Build](https://github.com/boisgera/md/workflows/Build/badge.svg)](https://github.com/boisgera/md/actions/workflows/build.yml)

Tiny Lean to Markdown document generator.

## Usage

Run `md MyLeanFile.lean` to generate a `MyLeanFile.lean.md` file.

  - Lean code is converted to Markdown code blocks,

  - Lean comments that start with `"\\-!"` (aka module documentation) 
    are converted to Markdown, the others stay verbatim in code blocks.

## Install

[Install Lean](https://lean-lang.org/install/) then run

```
lake run install
```

in the project directory.


