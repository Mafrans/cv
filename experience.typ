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

== #__("experience_title")

#experience_item(__("experience_liu_title"), "2023–")[
  #__("experience_liu_text")
]

#experience_item(__("experience_unions_title"), "2024–")[
    #experience_subitem(__("experience_webbu_title"), "2024–", __("experience_webbu_text"))
    #experience_subitem(__("experience_dlan_title"), "2024–", __("experience_dlan_text"))
    #experience_subitem(__("experience_liss_title"), "2024–2025", __("experience_liss_text"))
]

#experience_item(__("experience_anyday_title"), "2021–2023")[
  #__("experience_anyday_text")
]
