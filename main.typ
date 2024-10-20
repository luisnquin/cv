
#let blue = rgb("#1a58c4")

#let HeaderLink(label, url) = {
 link(url)[#underline(offset: 0.15em, stroke: 1.05pt, text(
    weight: "semibold",
    fill: blue,
    label
  ))] 
}

#let CareerItem(role, company, date) = {
  grid(
    inset: 0.3em,
    underline(offset: 0.18em, stroke: 1.1pt, text(weight: "medium", size: 1.20em, company)),
    text(style: "italic", size: 0.9em, role + " (" + date + ")")
  )
}

#let document() = {
  text(size: 1.3em, weight: "semibold", "LUIS QUIÑONES REQUELME")

  grid(
    columns: (1fr, 1fr),
    inset: 0.5em,
    HeaderLink("luis@quinones.pro", "mailto:luis@quinones.pro"),
    align(alignment.right, HeaderLink("/in/luisnquin","https://linkedin.com/in/luisnquin/")),
    "+51 912052391 / +503 72095581",
    align(alignment.right, HeaderLink("github.com/luisnquin","https://github.com/luisnquin"))
  )

  grid(
    inset: 0.5em,
    text("Software Developer with more than 4 years of experience in digital products, primarily in the Fintech and HR management sectors.") ,
    text("My knowledge includes backend, frontend, mobile development, cloud-based environments, embedded systems, and operating systems.")
  )

  grid(
    inset: 0.8em,
    text(size: 1.3em, weight: "semibold", "PROFESSIONAL CAREER:"),
    CareerItem("CTO/Co-Founder", "Chanchita", "Jul 2024 - present"),
  )
}

#text(font: "Roboto", size: 0.9em)[#document()]
