#let phone = "+46 70-550 86 33"
#let email = "malte.kluft@gmail.com"

#grid(columns: 1, rows: 2, gutter: 6pt,
    grid.cell(align: right, link("tel:" + phone, phone)),
    grid.cell(link("mailto:" + email, email))
)
