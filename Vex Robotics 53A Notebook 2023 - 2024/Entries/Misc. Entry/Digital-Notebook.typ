#set page(header: [ VR
  #h(1fr)
  October 23, 2023
])


= Digital Notebook

\

*Switch* 
\

Today 53A decided to proceed with a digitally formatted notebook. 

After handwriting the first 144 pages of our notebook, we found that it was a waste of time and team resources. 

I handwrote our notebook because I was taught it was best practice for documenting the engineering design process, and in past years it has not been such a draining task. This season, we have written our most extensive and detailed design journal, causing handwriting to be more strenuous. 

\

*Formatting*

#underline[Headers]

= Title
== Level 1 Heading
=== Level 2 Heading
==== Level 3 Heading
\

#underline[Daily Stand-Ups]
#let cell1 = rect.with(
  inset: 8pt,
  fill: rgb("#E3E3E3"),
  width: 100%,
  radius: 10pt
)

#grid(
  columns: (170pt, 170pt, 170pt),
  rows: (50pt, auto),
  gutter: 3pt,
  cell1(height: 115%)[*Team Member 1* \ Tasks],
  cell1(height: 115%)[*Team Member 2* \ Tasks],
   cell1(height: 115%)[*Team Member 3* \ Tasks]
)

- Team members updates on their assignments
- Each person’s tasks are highlighted in a grey bubble
\

#underline[Iterations]
#block(
  fill: rgb("FFEAE8"),
  width: 100%,
  inset: 8pt,
  radius: 4pt,
  [
  *Problem Analysis*
- Highlighted in Red
  ],
)
  

#block(
  width: 100%,
  fill: rgb("EEEEFF"),
  inset: 8pt,
  radius: 4pt,
  [
    *Solution(s)*
    - Highlighed in blue
  ])

#block(
  width: 100%,
  fill: rgb("FFFEEB"),
  inset: 8pt,
  radius: 4pt,
  [*Design*
  - Highlighted in yellow]
)



#underline[Code Entries]

- Each image of our code is accompanied by a plain-language explanation of what the code does
- _Variables_ from our code are green in the plain-text explanation

\
#underline[Testing]

- Labled with “Testing” title
- Organized in tables

#table(
  columns: (25%,75%),
  rows: (3.5%),
  fill: (_, row) => if row == 2 {rgb("#E4FFE6")}
  else if row == 1 {rgb("#FFE4E2")},
  [Trial], [Result],

  [1], [Failure],
  [2], [Success]

)

