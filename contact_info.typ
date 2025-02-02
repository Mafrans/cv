#let phone = "070-500 86 33"
#let email = "malte.kluft@gmail.com"

#grid(columns: 2, rows: 2, gutter: 6pt,
    grid.cell[Phone:],
    grid.cell(link("tel:" + phone, phone)),
    grid.cell[E-mail],
    grid.cell(link("mailto:" + email, email))
)
