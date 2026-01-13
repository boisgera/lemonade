# Lemonade

[![Build](https://github.com/boisgera/md/workflows/Build/badge.svg)](https://github.com/boisgera/md/actions/workflows/build.yml)

A Tiny Lean to Markdown converter.

<p align="center">
  <img src="images/lemonade.png" alt="Lemonade">
</p>

-----

Turn the file `Lemon.lean`

```lean
/-!
I ❤️ lemons!
-/

def lemon := "🍋"
```

into `Lemon.lean.md`

````markdown
I ❤️ lemons!

```lean
def lemon := "🍋"
```
````


## Usage

Generate a `SOURCE.lean.md` file with

```bash
lmd SOURCE.lean
```

  - Lean code is converted to Markdown code blocks,

  - Lean comments with `"\\-!"` (module documentation) are converted to Markdown.


## Install

[Install Lean](https://lean-lang.org/install/) then run

```
lake run install
```

in the project directory.


