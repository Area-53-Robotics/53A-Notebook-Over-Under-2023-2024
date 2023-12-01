#set page(paper: "a4")

#set page(margin: (
  top: 1in,
  bottom: 3.5cm,
  x: 1.5cm,
))

#show heading.where(level: 1): set text(size: 25pt)
#show heading.where(level: 1): set align(center)

//#show heading.where(level: 2): h2text => {
//  rect(fill: rgb("#33ff74"),h2text,
//      radius: 5pt,
//     outset: 2pt)
//

#show heading.where(level: 2): set text(size: 18pt)
#show heading.where(level: 2): set align(left)


//#show heading.where(level: 3): h3text => {
//  rect(fill: rgb("#99ffb9"),h3text,
//      radius: 5pt,
//)
//}

#show heading.where(level: 3): set text(size: 14pt)
#show heading.where(level: 3): set align(left)

#show heading.where(level: 4): set text(size: 12pt)
#show heading.where(level: 4): set align(left)

#set text(
    font: "Fira Sans",
    size: 12pt,
  )

#show emph: it => {
  text(rgb("08C629"), it.body)
}

/*
= How to use headers:
= header 1(the biggest one)
== header 2 (middle)
=== header 3 (smallest)
*/

#include "Entries/Misc. Entry/Digital-Notebook.typ"
#pagebreak()
#include "Entries/Build Entry/Intake-Sleds-Battery-Mount.typ"
#pagebreak()
#include "Entries/Code Entry/Catapult-Code-Testing.typ"
#pagebreak()
#include "Entries/Tournament Entry/Dulaney-Royal-Rumble.typ"
#pagebreak()
#include "Entries/Misc. Entry/Scrum-Master-Evaluation.typ"
#pagebreak()
#include "Entries/Build Entry/Catapult-Intake-Brainstorm.typ"
#pagebreak()
#include "Entries/Build Entry/Catapult-Assembly.typ"
#pagebreak()
#include "Entries/Build Entry/Intake-4-Testing-Drivetrain-Bracing-LED-Code.typ"
#pagebreak()
#include "Entries/Build Entry/Catapult-Testing-Auton-Testing.typ"
#pagebreak()
#include "Entries/Code Entry/Autonomous-Testing.typ"