#show heading: set block(below: 1em)
#let divider() = pad( top: 12pt, bottom: 12pt, line(length: 100%, stroke: color.silver))

#grid(columns: (2fr, 1fr), gutter: 18pt,
    include "intro.typ",
    include "contact_info.typ"
)

#divider()

#grid(columns: (2fr, 1fr), gutter: 18pt,
    grid.cell(include "experience.typ"),
    grid.cell(include "projects.typ"),
)

#divider()

#include "skills.typ"

#divider()
