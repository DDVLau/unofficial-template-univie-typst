// Template - University of Vienna | Universität Wien - Typst version
// Author: Xiaowei Liu
// Built based on #link("https://www.overleaf.com/latex/templates/template-university-of-vienna/brhjgbvnzfmn")[UniVie's official Overleaf template]. This Overleaf repo is under CC BY 4.0.

// Template function to apply all settings
// Usage: #show: template.with(author-name: "Your Name", author-email: "your.email@univie.ac.at")
#let template-univie(
  body,
  author-name: "Jamie Doe",
  author-email: "jamie.doe@univie.ac.at",
) = {
  // Page settings
  set page(
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
    footer: context if here().page() == 1 {
      // First page: centered page number only
      align(center)[
        #counter(page).display()
      ]
    } else {
      // Other pages: full footer with copyright and page count
      [
        #line(length: 100%, stroke: 0.5pt)
        #grid(
          columns: (1fr, 1fr, 1fr),
          align: (left, center, right),
          [© #author-name], [], context [#counter(page).display() / #counter(page).final().first()],
        )
      ]
    },
  )

  // Set font to Source Sans Pro (or similar sans-serif)
  set text(
    font: "Source Sans Pro",
    size: 11pt,
    lang: "en",
  )

  // Set link color
  show link: set text(fill: rgb(0, 99, 166))

  // Set heading numbering
  set heading(numbering: "1.1")

  body
}

// Title page logo
#let title-logo = align(left)[
  #box(width: 40%, height: 3cm, fill: white)[
    #align(center + horizon)[
      #figure(
        image("logo.pdf"),
      )
    ]
  ]
]

// Title block with author info
// Usage: title-block(title, author: "Your Name", email: "your.email@univie.ac.at")
// The email will automatically have "mailto:" prepended for the link
#let title-block(
  title,
  author: "Jamie Doe",
  email: "jamie.doe@univie.ac.at",
) = align(center)[
  #text(size: 17pt, weight: "bold")[
    #title
  ]

  #v(1em)

  #text(size: 12pt)[
    #author - #link("mailto:" + email, email)
  ]

  #v(0.5em)

  #text(size: 11pt)[
    #datetime.today().display("[month repr:long] [day], [year]"), Vienna
  ]
]
