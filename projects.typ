#import "i18n.typ": __
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

== #__("projects", "title")

#project(__("projects", "shellshock", "title"), "2024", "github.com/isterkvarn/operation_shell_shock", __("projects", "shellshock", "text"))
#project(__("projects", "stadiaplus", "title"), "2020", "github.com/Mafrans/StadiaPlus", __("projects", "stadiaplus", "text"))
