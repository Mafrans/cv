#let experience_item(title, date, content) = {
    pad(bottom: 6pt, grid(columns: (1fr, auto), gutter: 9pt,
        grid.cell[=== #title],
        grid.cell[_(#date)_],
        grid.cell(colspan: 2)[#content]
    ))
}

== Experience

#experience_item("B/Sc at Linköping University", "ongoing")[
    #lorem(20)
]

#experience_item("Student unions at Linköping University", "ongoing")[
    - Developer at D-Sektionens Webbutskott
    - Web developer at D-LAN
    - Graphic designer at Linköpings Studentspex
]

#experience_item("Full Stack Developer at Anyday AB", "2021-2023")[
    #lorem(20)
]
