#let error(content) = {
  box(fill: red, pad(y: 4pt, x: 2pt, text(fill: white, content)))
}

#let __(..labels, entries: toml("i18n.toml"), prev: ()) = {
  let lang = "en"
  if ("lang" in sys.inputs) {
    lang = sys.inputs.lang
  }

  labels = labels.pos()

  if (lang in entries) {
    return entries.at(lang)
  }
  else if (labels.len() == 0) {
    return error[\[i18n\] #raw(lang) not specified in #raw(prev.join("."))]
  }

  let label = labels.remove(0)
  prev.push(label)

  if (label in entries) {
    return __(..labels, entries: entries.at(label), prev: prev)
  }
}
