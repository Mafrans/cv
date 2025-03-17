#let phone = "+46 70-550 86 33"
#let email = "malte.kluft@gmail.com"
//#let email = "malma756@student.liu.se"
#let website = "https://maltekluft.se"

#grid(columns: 1, rows: 2, gutter: 6pt,
    grid.cell(link("tel:" + phone, phone)),
    grid.cell(link("mailto:" + email, email)),
    grid.cell(link(website, website))
)
