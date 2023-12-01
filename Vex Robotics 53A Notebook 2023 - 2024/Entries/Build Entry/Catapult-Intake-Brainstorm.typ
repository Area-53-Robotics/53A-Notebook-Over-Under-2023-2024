#set page(header: [VR
  #h(1fr)
  November 10, 2023
])


= CATAPULT + INTAKE BRAINSTORMING
\
== Stand-Up Notes

#let cell1 = rect.with(
  inset: 8pt,
  fill: rgb("#E3E3E3"),
  width: 100%,
  radius: 10pt
)

#grid(
  columns: (255pt, 255pt),
  rows: (50pt, auto),
  gutter: 3pt,
  cell1(height: 100%)[Brainstorm catapult design solutions together],
  cell1(height: 100%)[Brainstorm intake design solutions together],
)

== Catapult Brainstorming
//=== Gear Ratio
//*Problem Analysis*
//- 3:5 was proven too weak during Dulaney Royal Rumble
//- Returned to our original brainstorming entry (see pg 13 of 2nd Notebook)

=== Gear Ratio
#block(
  width: 100%,
  fill: rgb("FFEAE8"),
  inset: 8pt,
  radius: 4pt,
  [
    *Problem Analysis*
    - 3:5 was proven too weak during Dulaney Royal Rumble
    - Returned to our original brainstorming entry (see pg 13 of 2nd Notebook)
  ],
)

//*Solution*
//- In that entry, we narrowed down gear ratios to 1:3 and 3:5
//    - 3:5 not effective 
//    - 1:3 only original option left
//    - Considered adding another gear to the current ratio
//    - Decided too space-consuming

#block(
  width: 100%,
  fill: rgb("EEEEFF"),
  inset: 8pt,
  radius: 4pt,
  [
    *Solution*
    - 3:5 not effective 
    - 1:3 only original option left
    - Considered adding another gear to the current ratio       
    - Decided too space-consuming
  ],
)

//*Design*

#block(
  width: 100%,
  fill: rgb("FFFEEB"),
  inset: 8pt,
  radius: 4pt,
  [
  *Design*

  #figure(
  image("/Images/Build Images/Cata angle.png", width: 66%),
  caption: [Catapult Assemly])
  
  #figure(
  image("/Images/Build Images/Taller Cata Expanded.png"),
  caption: [Expanded Catapult Design])

- Increased height of catapult to make brain easier to access
- Increase height allowed arm to be lengthened to 22-holes

  #figure(
  image("/Images/Build Images/Cata Arm expanded top.png", width: 91.8126%),
  caption: [Catapult Arm Top]
  )
\
  #figure(
  image("/Images/Build Images/Cata Arm Expanded side.png"),
  caption: [Catapult Arm at an Angle]
  )
  
  ]
)

//#image("/Images/Build Images/Taller Cata Expanded.png", width: 100%)

//#figure(
//  image("/Images/Build Images/Taller Cata Expanded.png"),
 // caption: [Expanded Catapult Design]
//)


=== Ratchet

#block(
  width: 100%,
  fill: rgb("FFEAE8"),
  inset: 8pt,
  radius: 4pt,
  [
    *Problem Analysis*
- See original design on page 45 of 2#super[nd] notebook
    - Didn’t prevent catapult from turning against it 100% of the time
- May be caused by asymmetrical mounting
    - Only pushed on the far left end of the catapult’s gear’s axle
- May be caused by ratchet and catapult turning by different degrees of accuracy
    - Ratchet used 24-tooth gear\
      > each tooth turn = 15 degrees
    - Catapult used 36-tooth gear\
      > Each tooth turn = 10 degrees
  ],
)
  

#block(
  width: 100%,
  fill: rgb("EEEEFF"),
  inset: 8pt,
  radius: 4pt,
  [
    *Solution*
    - Ratchet using 24-tooth gear
    - Placed in middle of axle it is controlling
    
  ])

#pagebreak()
  
#block(
  width: 100%,
  fill: rgb("FFFEEB"),
  inset: 8pt,
  radius: 4pt,
  [*Design*
  
  #figure(
  image("/Images/Build Images/Ratchet Top.png"),
  caption: [Top of Ratchet]
  )

//  #figure(
//  image("/Front of Ratchet.png"),
//  caption: [Front of Ratchet]
//  )

  #figure(
  image("/Images/Build Images/ratchet at Angle.png", width: 100%),
  caption: [Ratchet at Angle]
  )
  
  ]
)

\
\
\
\
== Intake

#block(
  width: 100%,
  fill: rgb("FFEAE8"),
  inset: 8pt,
  radius: 4pt,
  [
    *Problem Analysis*
- See original Intake on pg 42 of 2#super[nd] notebook
- As mentioned in our tournament reflections (see pg [] of Volume 2), our intake started compressing triballs too much as the the tournament went on, and couldn’t intake or outtake easily
\
- To find a solution we returned to our initial brainstorming (see pg [] of 1#super[st] notebook)
- chose two-wheel horizontal intake because it seemed most effective at intaking triballs into the catapult to be shot
- During the recent tournament, we found little use or opportunity to intake a triballs then shoot them \
  > used the intake to score triballs individually \
  > used the catapult to launch match loads onto our side of the field \
  > only ever need to pass triballs OR score them \
  > Scoring from opposite side of goal was too difficult during match
\
- Decided to scrap the idea of intaking triballs to shoot
- New intake will be used solely for scoring
- Intake, hold, and outake triballs

  ],
)

#block(
  width: 100%,
  fill: rgb("EEEEFF"),
  inset: 8pt,
  radius: 4pt,
  [
    *Solution* \
- During tournament, also noticed that vertical intakes (see pg 53 of Volume 1) performed surprisingly well
- This design is much more sturdy than our current design
- Despite eliminating during our first brainstorming session, decided to proceed with this design since other teams have proven its efficacy, and our goals for our intake have changed
  ])

  // Vertical intake sketch.png

#pagebreak()
  
  #block(
  width: 100%,
  fill: rgb("FFFEEB"),
  inset: 8pt,
  radius: 4pt,
  [*Design*
  
  #figure(
  image("/Images/Build Images/Vertical intake sketch.png", width: 100%),
  caption: [Intake Initial Design]
  )

- Inspired by rubber-band intakes which used one large roller instead of many wheels
- Increases contact between roller and intake
- The point of tetrahedral triballs could get stuck between the wheels of a multi-wheel vertical intake, having one roller eliminates this
- Roller will be surrounded with mesh to increase traction


]
)