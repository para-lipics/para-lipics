#import "lib.typ"

// #set page(
//   background: context {
//     if counter(page).get().at(0) == 1 {
//       image("tmp/LIPIcs-example-01.png")
//     }
//     if counter(page).get().at(0) == 2 {
//       image("tmp/LIPIcs-example-02.png")
//     }
//     if counter(page).get().at(0) == 3 {
//       image("tmp/LIPIcs-example-03.png")
//     }
//     if counter(page).get().at(0) == 4 {
//       image("tmp/LIPIcs-example-04.png")
//     }
//   },
// )

#show: lib.template.with(
  title: [*Dummy title*],
  title-running: [LIPIcs Typst Template],
  authors: (
    (
      name: "Jane Open Access",
      running: "J. Open Access",
      affiliations: (
        (name: [Dummy University Computing Laboratory], address: [[optional: Address]], country: [Country]),
        (name: [My second affiliation], country: [Country]),
      ),
    ),
    (
      name: [Joan R. Public],
      running: "J. R. Public",
      affiliations: (
        (name: [Department of Informatics, Dummy College], address: [[optional: Address]], country: [Country]),
      ),
      funding: [No funding here, but an acknowledgement that could be],
    ),
  ),
  abstract: [
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent convallis orci arcu, eu mollis dolor.
    Aliquam eleifend suscipit lacinia. Maecenas quam mi, porta ut lacinia sed, convallis ac dui. Lorem
    ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse potenti.
  ],
  keywords: [*typst*, type setting, style, lipics-v2021],
  digital-object-id: "10.4230/LIPIcs.CVIT.2016.23",
  // category: [Showcase],
  supplementary-material-description: [These are supplementary materials],
  supplementary-material: (
    (
      cite: "DBLP:books/mk/GrayR93",
      subcategory: [Typesetting],
      swhid: [Typst],
      classification: [Documentation],
      url: "https://typst.app/docs/",
      linktext: [typst docs website],
    ),
    (
      cite: "DBLP:books/mk/GrayR93",
      subcategory: [Description, Subcategory],
      swhid: [Software Heritage Identifier],
      classification: [General Classification (e.g. Software, Dataset, Model, ...)],
      url: "http://google.com",
      linktext: [opt. text shown instead of the URL],
    ),
  ),
  acknowledgements: [I want to thank the Typst creators for the wonderful Typesetting engine they have created.],
  funding-general-thanks: [(Optional) general funding statement ...],
  ccs: "<ccs2012><concept><concept_id>10002944.10011122.10002945</concept_id><concept_desc>General and reference~Surveys and overviews</concept_desc><concept_significance>300</concept_significance></concept></ccs2012>",
  editors: [Anne Onymous],
  event: [The Great Typst Discord Showcase 2025],
  event-location: [Showcase forum \ Discord],
  event-logo: text(size: 12pt, fill: oklch(64%, 0.08, 200deg), weight: "bold", [typst]),
  event-short-title: [GTDSC 2025],
  copyright: [Anne Onymous], // Jane Open Access and Joan R. Public
  line-numbers: true,
)


= Typesetting instructions - Summary

LIPIcs#footnote[footnote] is a series of open access high-quality conference proceedings across all fields in informatics established in cooperation with Schloss Dagstuhl.
In order to do justice to the high scientific quality of the conferences that publish their proceedings in the LIPIcs series, which is ensured by the thorough review process of the respective events, we believe that LIPIcs proceedings must have an attractive and consistent layout matching the standard of the series.
Moreover, the quality of the metadata, the typesetting and the layout must also meet the requirements of other external parties such as indexing service, DOI registry, funding agencies, among others.
The guidelines contained in this document serve as the baseline for the authors, editors, and the publisher to create documents that meet as many different requirements as possible.

Please comply with the following instructions when preparing your article for a LIPIcs proceedings volume.

#heading(numbering: none, level: 4)[Minimum Requirements]

- Use pdflatex and an up-to-date LATEX system.
- Use further LATEX packages and custom made macros carefully and only if required.
- Use the provided sectioning macros: \section, \subsection, \subsubsection,
- \paragraph, \paragraph*, and \subparagraph* (for more details, see Section 2.4).
- Provide suitable graphics of at least 300dpi (preferably in PDF format).
- Use BibTEX and keep the standard style (plainurl) for the bibliography.
- Please try to keep the warnings log as small as possible. Avoid overfull \hboxes and any
- kind of warnings/errors with the referenced BibTEX entries.
- Use a spellchecker to correct typos.

#heading(level: 5, numbering: none)[Mandatory metadata macros]
#lorem(200)

= Syntax

== Figures, tables, and listings

#figure(block(fill: yellow, width: 10cm, height: 5cm), caption: [This is my figure])

#figure(
  table(
    columns: (1cm, 1fr, 1fr),
    [A], [2], [3],
    [B], [3], [4],
    [C], [3], [4],
    [D], [3], [4],
    [E], [3], [4],
  ),
  caption: [Table],
)

#figure(
  ```python
  print("Hello")
  a = [1, 2, 3, 4]
  def foo(bar):
      print(bar)
  ```,
  caption: [My listing],
)

== Lists and Enumerations

- List bullet
- List bullet


+ Enumeration
  + Enumeration
  + Enumeration
+ Enumeration
  + Enumeration
  + Enumeration

== Environments

#let content = lorem(24)
#lib.theorem(content)
#lib.lemma(content)
#lib.corollary(content)
#lib.proposition(content)
#lib.exercise(content)
#lib.definition(content)
#lib.conjecture(content)
#lib.observation(content)
#lib.example(content)
#lib.example(content)
#lib.note(content)
// #lib.note(content)
#lib.remark(content)
#lib.claim(content)
#lib.proof(content)
#lib.claimproof(content)
