// Template - University of Vienna | Universität Wien - Typst version
// Author: Xiaowei Liu
// Built based on #link("https://www.overleaf.com/latex/templates/template-university-of-vienna/brhjgbvnzfmn")[UniVie's official Overleaf template]. This repo is under CC BY 4.0.

#set page(
  paper: "a4",
  margin: (top: 2.5cm, bottom: 2.5cm, left: 2cm, right: 2cm),
  header: context if not here().page() == 1 {
    [
      #grid(
        columns: (1fr, 1fr),
        align: (left, right),
        [
          #box(width: 3cm, height: 1cm, fill: white)[
            #align(center)[
              #figure(image("logo.pdf"))
            ]
          ]
        ],
        [
          #text(size: 11pt)[University of Vienna]
        ],
      )
      #v(-0.8em)
      #line(length: 100%, stroke: 0.5pt)
    ]
  },
  header-ascent: 30%,
  footer: context if not here().page() == 1 {
    [
      #line(length: 100%, stroke: 0.5pt)
      #grid(
        columns: (1fr, 1fr, 1fr),
        align: (left, center, right),
        [© Jamie Doe], [], context [#counter(page).display() / #counter(page).final().first()],
      )
    ]
  },
)

// Set font to Source Sans Pro (or similar sans-serif)
#set text(
  font: "Source Sans Pro",
  size: 11pt,
  lang: "en",
)

// Set link color
#show link: set text(fill: rgb(0, 99, 166))

// Set heading numbering
#set heading(numbering: "1.1")

// Title page logo placeholder
#align(left)[
  #box(width: 40%, height: 3cm, fill: white)[
    #align(center + horizon)[
      #figure(
        image("logo.pdf"),
      )
    ]
  ]
]

#v(1em)

// Title, author, date
#align(center)[
  #text(size: 17pt, weight: "bold")[
    Template - University of Vienna | Universität Wien
  ]

  #v(1em)

  #text(size: 12pt)[
    Jamie Doe - #link("mailto:jamie.doe@univie.ac.at")[jamie.doe\@univie.ac.at]
  ]

  #v(0.5em)

  #text(size: 11pt)[
    #datetime.today().display("[month repr:long] [day], [year]"), Vienna
  ]
]

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
