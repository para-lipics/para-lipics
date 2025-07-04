# para-lipics: An Unofficial LIPIcs Typst template

Unofficial reproduction of the LaTeX `lipics-v2021.cls` template.

## Requirements

This project requires Typst >= 0.13.1.

Due to the current impossibility of shipping fonts with templates on Typst Universe, some fonts have to be installed separately for maximal compliance with the LIPIcs official template.
If these fonts are not available during compilation, then fallback fonts embedded in the CLI are used.
If you're using the webapp, just upload the corresponding `.ttf` or `.otf` files in your project.
If you're using the CLI, install the fonts on your system, or provide them using the `--font-path` argument.

Here are the fonts to install:
- **Computer Modern Sans**[^1] (fallback: New Computer Modern Sans)
- **New Computer Modern Mono** (fallback: DejaVu Sans Mono)

[^1]: Note that this is not *New* Computer Modern