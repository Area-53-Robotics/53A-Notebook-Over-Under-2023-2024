//notebook start
//Note: "\" adds a line between text

#set page(header: [ VR
  #h(1fr)
  October 27, 2023
])

= INTAKE SLEDS + BATTERY MOUNT 
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
  rows: (80pt, 80pt),
  gutter: 3pt,
  cell(height: 100%)[*Michael*:\
  - Mount intake sleds I cut last meeting],
  cell(height: 100%)[*Akif*:\
  - Investigate bending I saw in the catapult's arm last meeting],
  cell(height: 100%)[*Jacob*:
  - I will construct a secure battery mount],
  cell(height:100%)[*Veena*: \ 
  - I will start organizing and formatting our digital notebook],
  cell(height:100%)[*Zoey*: \ 
  - xxx]
)

== Intake Sleds
Today we mounted and tested the intake sleds.

=== Assembly

#figure(
  image("/Images/Build Images/Intake Sled Distance.png", width: 92.1893022%),
  caption: [Intake Sleds])

#figure(
  image("/Images/Build Images/Intake Sled close-up.png", width: 50%),
  caption: [Intake Sleds; Detail])

=== Testing
==== Procedure
- Drove over the barrier repeatedly to establish how much the sleds improved driving over the middle barrier with the intake forward \
  > We could not drive over the barrier at all before implementing the sleds.

==== Results
#table(
  columns: (25%,75%),
  rows: (3.5%),
  fill: (_, row) => if row > 0 {rgb("#E4FFE6")},
  [Trial], [Drive Over Middle Barrier?],

  [1], [Yes],
  [2], [Yes],
  [3], [Yes],
  [4], [Yes],
  [5], [Yes]
)

#figure(
  image("/Images/Build Images/intake sled use.png"),
  caption: [Sleds Use Case from Video of Tests]
)

- Sleds clearly push front of robot up
- Allows wheels to later come in contact with pole and drive over

=== Conclusion
- The sleds allow us to drive over the barrier 100% of the time


#pagebreak()
  
== Battery Mount

//#figure(
 //   grid(
  //      columns: (13em, 13em, 13em),
       // gutter: .25em,
 //       [ #image("/Images/Build Images/BatteryHolderSide.png", width: 75%) ],
 //       [ #image("/Images/Build Images/BatteryHolderTop.png", width: 75%) ],
//        [
 //       - Simple Lever
 //       - Battery placed in cage
 //       - Lever pulls down on end of battery
 //       - Battery cannot move within cage
 //     ],
 //   ),
 //   caption: [Battery Mount]
//) 

//#figure(
//  image("/Images/Build Images/Intake Sled close-up.png", width: 50%),
//  caption: [Intake Sleds; Detail])

#grid(
        columns: (13em, 13em, 13em),
       // gutter: .25em,
     figure(image("/Images/Build Images/BatteryHolderSide.png", width: 75%), caption: [Battery Mount \ Side]),
     figure(image("/Images/Build Images/BatteryHolderTop.png", width: 75%), caption: [Battery Mount \ Top] ),
        [
        - Simple lever
        - Battery placed in cage
        - Lever pulls down on end of battery
        - Rubber bands pull lever into place
        - Battery cannot move within cage
      ]
) 