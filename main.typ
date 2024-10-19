


#let document() = {
  text(size: 1.3em, weight: "semibold", "LUIS QUIÑONES REQUELME")

  grid(
    columns: (1fr, 1fr),
    inset: 0.5em,
    link("mailto:luis@quinones.pro")[#underline[#text(
      weight: "semibold",
      fill: blue,
      "luis@quinones.pro"
    )]],
    align(alignment.right, link("https://linkedin.com/in/luisnquin/")[#underline[#text(
      weight: "semibold",
      style: "italic",
      fill: blue,
      "/in/luisnquin"
    )]]),
    "+51 912052391 / +503 72095581",
    align(alignment.right, link("https://github.com/luisnquin")[#underline[#text(
      weight: "semibold",
      fill: blue,
      "github.com/luisnquin"
    )]])
  )
}

#text(font: "Roboto", size: 0.9em)[#document()]
