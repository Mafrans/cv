#set text(size: 10pt)

#let project(title, date, url, content) = {
    show link: set text(size: 9pt)

    pad(bottom: 6pt, grid(columns: (1fr, auto), gutter: 6pt,
        grid.cell[=== #title],
        grid.cell[_(#date)_],
        grid.cell(colspan: 2, pad(bottom: 4pt, link("https://" + url, url))),
        grid.cell(colspan: 2)[#content]
    ))
}

== Projects

#project("StadiaPlus", "2020", "github.com/Mafrans/StadiaPlus")[
    Peaking at 30 000 users, StadiaPlus was the leading chrome
    extension for Google's now retired Stadia platform.
]
