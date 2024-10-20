
#let blue = rgb("#1a58c4")

#let HeaderLink(label, url) = {
 link(url)[#underline(offset: 0.15em, stroke: 1.05pt, text(
    weight: "semibold",
    fill: blue,
    label
  ))] 
}

#let CompanyExperience(company, roles) = {
  let Experiences() = {
    stack(
      dir: ttb,
      spacing: 0.2em,
      for role in roles {
        grid(
          text(style: "italic", size: 0.9em, role.title + " (" + role.range + ")")
        )
      }
    )
  }

  stack(
    spacing: 0.8em,
    underline(offset: 0.18em, stroke: 1.1pt, text(weight: "medium", size: 1.20em, company)),
    Experiences(),
  )
}

#let document() = {
  stack(
    dir: ttb,
    spacing: 1.5em,
    text(size: 1.3em, weight: "semibold", "LUIS QUIÑONES REQUELME"),
    grid(
      columns: (1fr, 1fr),
      rows: (1.15em),
      gutter: 0.5em,
      HeaderLink("luis@quinones.pro", "mailto:luis@quinones.pro"),
      align(alignment.right, HeaderLink("/in/luisnquin","https://linkedin.com/in/luisnquin/")),
      "+51 912052391 / +503 72095581",
      align(alignment.right, HeaderLink("github.com/luisnquin","https://github.com/luisnquin"))
    ),
    grid(
      gutter: 0.5em,
      text("Software Developer with more than 4 years of experience in digital products, primarily in the Fintech and HR management sectors.") ,
      text("My knowledge includes backend, frontend, mobile development, cloud-based environments, embedded systems, and operating systems.")
    ),
    stack(
      dir: ttb,
      spacing: 2em,
      text(size: 1.3em, weight: "semibold", "PROFESSIONAL CAREER:"),
      CompanyExperience("Chanchita", (
        (
          title: "Senior Backend Developer",
          range: "Oct 2024 - present"
        ),
        (
          title: "Senior Full Stack Developer",
          range: "May 2024 - Oct 2024"
        )
      )),
      CompanyExperience("Qompa", (
        (
          title: "CTO/Co-Founder",
          range: "Jul 2024 - present"
        ),
      )),  
      CompanyExperience("Inversiones.io", (
        (
          title: "Site Reliability Engineer",
          range: "Jan 2024 - Oct 2024"
        ),
      )),
      CompanyExperience("WiserSKILLS - NEOBRAIN", (
        (
          title: "Full-Stack Developer",
          range: "Jun 2023 - Jan 2024"
        ),
        (
          title: "Backend Developer",
          range: "Feb 2022 - Jun 2023"
        )
      )),
      CompanyExperience("Desstorm", (
        (
          title: "Web Developer",
          range: "Oct 2021 - Dec 2021"
        ),
      ))
    )
  )
}

#text(font: "Roboto", size: 0.9em)[#document()]
