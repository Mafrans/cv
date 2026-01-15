#import "i18n.typ": __

#let experience_item(title, date, content) = {
    pad(bottom: 6pt, grid(columns: (1fr, auto), gutter: 9pt,
        grid.cell[=== #title],
        grid.cell[_(#date)_],
        grid.cell(colspan: 2, content)
    ))
}

#let experience_subitem(title, date, content) = {
  set list(spacing: 12pt)
  [- #grid(columns: (1fr, auto), gutter: 9pt,
    grid.cell(title),
    grid.cell[_(#date)_],
    grid.cell(colspan: 2, text(size: 10pt, style: "italic", content))
  )]
}

== #__("experience", "title")

#experience_item(__("experience", "liu", "title"), "2023–")[
  #__("experience_liu_text")
]

#experience_item(__("experience", "unions", "title"), "2024–")[
  #experience_subitem(__("experience", "webbu", "title"), "2024–", __("experience", "webbu", "text"))
  #experience_subitem(__("experience", "dlan", "title"), "2024–", __("experience", "dlan", "text"))
  #experience_subitem(__("experience", "liss", "title"), "2024–2025", __("experience", "liss", "text"))
]

#experience_item(__("experience", "anyday", "title"), "2021–2023")[
  #__("experience", "anyday", "text")
]
