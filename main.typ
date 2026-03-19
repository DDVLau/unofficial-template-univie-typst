// Template - University of Vienna | Universität Wien - Typst version
// Author: Xiaowei Liu
// Built based on #link("https://www.overleaf.com/latex/templates/template-university-of-vienna/brhjgbvnzfmn")[UniVie's official Overleaf template]. This Overleaf repo is under CC BY 4.0.

#import "lib.typ": template-univie, title-block, title-logo

// Author configuration - change these values as needed
#let author-name = "Jamie Doe"
#let author-email = "jamie.doe@univie.ac.at"

// Apply template with author configuration
#show: template-univie.with(author-name: author-name, author-email: author-email)

// Title page logo
#title-logo

#v(1em)

// Title, author, date (email automatically gets mailto: prefix)
#title-block(
  [Template - University of Vienna | Universität Wien],
  author: author-name,
  email: author-email,
)

#v(2em)

// Table of contents
#outline(
  title: [Contents],
  indent: auto,
)



= Template

== Fonts

In this example the #text(size: 24pt)[huge font size] is set and the #text(size: 8pt)[foot note size also]. A command is used #text(font: "Inria Serif")[to change the style of a sentence].

#lorem(100)

== Mathematics

$ S_n = (X_1 + X_2 + dots.c + X_n)/n = 1/n sum_(i)^(n) X_i $

== Tables

#align(center)[
  #table(
    columns: 3,
    stroke: 1pt,
    [Cell 1], [Cell 2], [Cell 3],
    [Cell 4], [Cell 5], [Cell 6],
    [Cell 7], [Cell 8], [Cell 9],
  )
]

== Example 1

#footnote[Tiny little footnote]#lorem(50)

== Example 2

A link to the #link("https://www.univie.ac.at")[homepage of the University of Vienna].

#lorem(50)

+ Like this,
+ and like this.

- Like this,
- and like this.

#lorem(100)
