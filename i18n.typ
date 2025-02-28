#let error(content) = {
  box(fill: red, pad(y: 4pt, x: 2pt, text(fill: white, content)))
}

#let __(label) = {
  let entries = toml("i18n.toml")

  let lang = "en"
  if ("lang" in sys.inputs) {
    lang = sys.inputs.lang
  }

  if (label in entries) {
    if (lang in entries.at(label)) {
      entries.at(label).at(lang)
    }
    else {
      error[\[i18n\] #raw(lang) not specified in #raw(label)]
    }
  }
  else {
    error[\[i18n\] Label #raw(label) not found]
  }
}
