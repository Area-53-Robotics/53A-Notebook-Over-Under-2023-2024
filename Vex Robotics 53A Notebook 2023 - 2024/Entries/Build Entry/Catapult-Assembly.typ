#set page(header: [VR
  #h(1fr)
  November 11, 2023
])


= CATAPULT ASSEMBLY
\
== Stand-Up Notes
#let cell = rect.with(
  inset: 8pt,
  fill: rgb("#E3E3E3"),
  width: 100%,
  radius: 10pt
)
#grid(
  columns: (170pt, 170pt, 170pt),
  rows: (90pt, 90pt),
  gutter: 3pt,
  cell(height: 100%)[*Veena*:\
  - Akif and I will slip the gears that drive the catapult and redesign our brain mount],
  cell(height: 100%)[*Michael*:\
  - I will disassemble the old catapult, cut new towers to mount the new catapult],
  cell(height: 100%)[*Jacob*:
  -  I will assemble the new arm of the catapult],
  cell(height:100%)[*Zoey*: \ 
  - I will work on the typst notebook and update pros to pros 4]
)

\

== Assembly 
Today we finished assembling our catapult.

#figure(
  image("/Images/Build Images/CataBack.png", width: 76.942%),
  caption: [Back of Catapult]
)

#figure(
  image("/Images/Build Images/Catapult Inside.png", width:87% ),
  caption: [Front of Catapult]
)

#figure(
  image("/Images/Build Images/12ToothRatchet.png", width:86.4%),
  caption: [Ratchet]
)

== Battery Mount
See original mount on pg 45 of Volume 2.

#block(
  width: 100%,
  fill: rgb("FFEAE8"),
  inset: 8pt,
  radius: 4pt,
  [
    *Problem Analysis*
- During our last tournament, our battery got unplugged by our opponent during a critical match (see pg [])
- The mount also gradually loosened itself throughout the tournament
  ],
)

#block(
  width: 100%,
  fill: rgb("EEEEFF"),
  inset: 8pt,
  radius: 4pt,
  [
    *Solution* \
- With the new space under our catapult, we decided to replace our previous battery “cage” (see pg []) with battery clips
- This is more inconspicuous and space efficient
  ])

  // Vertical intake sketch.png
  
  #block(
  width: 100%,
  fill: rgb("FFFEEB"),
  inset: 8pt,
  radius: 4pt,
  [*Design*
  
  #figure(
  image("/Images/Build Images/battery Mount Side.png", width: 100%),
  caption: [Intake Initial Design]
  )
]
)