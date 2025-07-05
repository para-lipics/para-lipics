# para-lipics: An Unofficial LIPIcs Template for Typst

A community-maintained Typst reproduction of the official LaTeX `lipics-v2021.cls` template.

GitHub issues and pull requests are welcome.

## Requirements

This template requires **Typst ≥ 0.13.1**.

Due to current limitations in Typst's font handling, it is currently not possible to ship custom fonts directly within Typst Universe templates.
As a result, some fonts must be installed separately to ensure maximal visual compatibility with the official LIPIcs style.

If the required fonts are unavailable during compilation, the template will use fallback fonts embedded in the CLI.
- If you're using the **web app**, upload the `.ttf` or `.otf` files directly into your project.
- If you're using the **CLI**, either install the fonts system-wide or specify them using the `--font-path` option.

**Required fonts:**

- **Computer Modern Sans**[^1] (fallback: New Computer Modern Sans)
- **New Computer Modern Mono** (fallback: DejaVu Sans Mono)

[^1]: Note that this is **not** _New_ Computer Modern, it's the original Knuth-designed version.

## Caveats

This template is **unofficial**, and **Dagstuhl Publishing does not currently accept Typst documents**.

Most conferences using the LIPIcs format accept **PDF submissions**, so _in theory_, you could submit a paper typeset with Typst.
However, we strongly discourage using this template for official submissions: doing so risks a **desk reject** if the publisher's formatting requirements are not strictly followed.

If your paper is accepted, you will still need to **convert your Typst source to LaTeX** to submit it to the publisher.
This may be feasible via tools like [**Pandoc**](https://pandoc.org/) or even LLMs.

For now, this template is best suited for authors who:
- enjoy working in Typst
- want a LIPIcs-like preview during drafting
- are comfortable converting to LaTeX later if needed

Once Typst reaches version 1.0.0, this template may also serve as a lobbying tool to encourage Dagstuhl to officially support Typst.

**Note:** This template is a work in progress.
Perfect fidelity with the official LIPIcs format is not guaranteed (yet).