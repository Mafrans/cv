#import "i18n.typ": __
#let icon(name) = text(font: "FiraCode Nerd Font")[#name]
#let item(icon_name, name) = [#icon(icon_name) #h(4pt) #name \ ]

== #__("skills_title")

#box(height: 80pt, grid(columns: (1fr, 1fr),
    grid.cell(columns(2)[
        #item("\u{ed46}", "React")
        #item("\u{e8ca}", "TypeScript")
        #item("\u{e8b7}", "Svelte")
        #item("\u{e749}", "CSS")
        #item("\u{e7da}", "Figma")
        #item("\u{ebc6}", "Linux")
        #item("\u{e83e}", "NextJS")
        #item("\u{e76e}", "Postgres")
        #item("\u{e81b}", "Kotlin")
        #item("\u{e7b0}", "Docker")
    ]),
    grid.cell[
      #__("skills_text")
    ]
))
