#set page(header: [VR
  #h(1fr)
  November 25, 2023
])

= Catapult Testing 

== Stand-Up Notes
#let cell = rect.with(
  inset: 8pt,
  fill: rgb("#E3E3E3"),
  width: 100%,
  radius: 10pt
)
#grid(
  columns: (255pt, 255pt),
  rows: (85pt),
  gutter: 3pt,
  cell(height: 100%)[*Veena*:\
  - Michael and I will test the catapult for the maximum number of rubber bands that can be used to power it],
  cell(height:100%)[*Zoey*: \ 
  - I will test our autonomous programs
]
)

== Catapult Testing

- As mentioned in our tournament reflections (see pg []), our last catapult could not shoot over the middle barrier
- To ensure our new design can shoot over the middle barrier from the load zone, we will test how many rubber bands are required to shoot triballs over (range) and compare this to how many rubber bands the catapult can withstand (torque)

=== Range

*Procedure*

- Disconnected catapult from motor \
  > Eliminate resistance from motor
- Added rubber bands in multiples of two \
  > One for each tension post
- Tested until triballs consistently shot over the middle barrier

*Results*

#table(
  columns: (10%,45%,45%),
  rows: (3.5%),
  fill: (_, row) => if row >=4 {rgb("#E4FFE6")}
  else if row == 3 or row == 2 or row == 1{rgb("#FFE4E2")},
  [Trial], [No. Rubber Bands], [Shoot Over?],

  [1], [2], [X],
  [2], [4], [X],
  [3], [4], [X],
  [4], [6], [✔],
  [5], [6], [✔],
  [6], [8], [✔],
  [7], [8], [✔]
)

#pagebreak()

=== Torque

- Engaged catapult’s motor \
  > Test if motor can withstand rubber bands
- Added rubber bands in multiples of two \
  > One for each tension post 
- Tested Until motor could no longer turn

*Results*

#table(
  columns: (10%,45%,45%),
  rows: (3.5%),
  fill: (_, row) => if row <=7 and row > 0 {rgb("#E4FFE6")}
  else if row >= 8 {rgb("#FFE4E2")},
  [Trial], [No. Rubber Bands], [Turn?],

  [1], [2], [✔],
  [2], [4], [✔],
  [3], [4], [✔],
  [4], [6], [✔],
  [5], [6], [✔],
  [6], [8], [✔],
  [7], [8], [✔],
  [8], [10], [X],
  [9], [10], [X]
)

=== Conclusion

- Between 6 and 8 rubber bands was optimal for shooting match loads

== Ratchet

#block(
  width: 100%,
  fill: rgb("#FFE4E2"),
  inset: 8pt,
  radius: 4pt,
[ *Problem Analysis*
- When testing the catapult’s torque, the ratchet was not strong enough
- Rubber bands easily pulled the catapult’s arm against the ratchet]
)

#let cell1 = rect.with(
  inset: 8pt,
  fill: rgb("EEEEFF"),
  width: 100%,
  radius: 10pt
)

#let cell2 = rect.with(
  inset: 8pt,
  fill: rgb("FFFEEB"),
  width: 100%,
  radius: 10pt
)

#grid(
  columns: (340pt, 170pt),
  rows: (220pt, 575pt, 625pt),
  gutter: 3pt,
  cell1(height: 100%)[*Solution No. 1* \
  Increase number of rubber bands pulling ratchet’s screw against gear
  #figure(image("/Images/Build Images/ratchet gear front.png", width: 100%),
  caption: [Incresed Rubber Bands on Ratchet])],
  
  cell2(height:100%)[*Result*: \ 
  - Rubber bands continued to pull the screw against the gear its ratcheted to
  - But, there was not enough force to keep the arm stationary],
  
  cell1(height: 100%)[*Solution No. 1* \
  - Lower the ratchet compared to the gear it pushed against
  - The smaller angle between the screw head and get may increase traction
  #figure(image("/Images/Build Images/ratchet gear og height.png", width: 100%), caption: [Ratchet; Original Altitude])
  #figure(image("/Images/Build Images/ratchet gear lower height.png"), caption: [Ratchet; Modified Altidue])
  ],

  cell2(height: 100%)[*Results* \
  - This weakened the strength of the ratchet and exacerbated the problem
],

cell1(height: 100%)[*Solution No. 1* \
  - Replaced the gear the ratchet pushes against with a sprocket, because the head of a screw fits in between the teeth of a sprocket better than those of a gear.

  #figure(image("/Images/Build Images/ratchet sprocket back.png", width: 100%), caption: [Ratchet; Sprocket])
  #figure(image("/Images/Build Images/ratchet sprocket.png"), caption: [Ratchet; Sprocket])
  ],

  cell2(height: 100%)[*Results* \
  - This solved the problem completely
  - Succeeded in preventing the rubberbands that launch the arm from back driving the catapult’s motor.
 ]
)

#pagebreak()

= Goal Side Autonomous Testing

Today we also extensively tested our autonomous programs. For 11/25 daily stand up, see page [].

When coding out autonomous program, we tune the program in parts. We start with the first few movements, tune them, add the next movements, tune them, and repeat the process until we have completed the intended route.


#grid(
  columns: (4in, 4in),

  figure(
  image("/Images/Build Images/auton skill sketch.png", width: 105%),
  caption: [Autonomous Goal Side Route],),

  figure(
  image("/Images/Build Images/AutonSkillScore.png", height: 50%),
  caption: [Autons Goal Side Score],),

  figure(
  image("/Images/Build Images/AutonRouteKey.png", width: 50%, ),
  caption: [Auton Route Key]
  )
)

#pagebreak()

== Stage 1

+ Drive forward with match load
+ Outtake match load
+ Turn towards far triball on field
+ Drive to far triball
+ Intake it

=== Testing

#table(
  columns: (10%,18%,18%, 18%, 18%, 18%),
  rows: (3.5%, auto, auto),
 fill: (_, row) => if row <=7 and row > 0 {rgb("#FFE4E2")}
  else if row == 8 {rgb("#E4FFE6")},
  
  [Trial], [!], [2], [3], [4], [5],

  [1], [✔], [✔], [X], [Ended Prog], [], 

  [2], [✔], [✔], [X], [Ended Prog], [],

  [3], [✔], [✔], [X], [Ended Prog], [],

  [4], [✔], [✔], [X], [Ended Prog], [],

  [5], [✔], [✔], [X], [Ended Prog], [],

  [6], [✔], [✔], [X], [Ended Prog], [],

  [7], [✔], [✔], [✔], [✔], [X ],

  [8], [✔], [✔], [✔], [✔], [✔],
  
)

=== Post-Test Edits
- Original Intake had a set number of seconds to run for, changed to true or false so that intake can run even while driving (more efficient)
- _Pros::delay_ is now used for intake while staying still

\
== Stage Two

+ Drive forward 
+ Outtake matchload 
+ Turn + drive to far triball 
+ Intake far triball 
+ Score Matchload and triball using wings 
+ Turn 180 to outtake far triball 
+ Score far triball 
+ Turn towards final triball 
+ Intake final triball 
+ Score final triball 

\



#pagebreak()

=== Testing
\

#let check = symbol("✔")

#table(
  columns: (10%,9%,9%, 9%, 9%, 9%, 9%, 9%, 9%, 9%, 9%),
  rows: (3.5%, auto, auto),
 fill: (_, row) => if row == 9 and row == 13 and row > 0 {rgb("#E4FFE6")},
//  else if row <=10 and row == {rgb("#FFE4E2")}

 [==== Trial], [==== 1], [==== 2], [==== 3], [==== 4], [==== 5], [==== 6], [==== 7], [==== 8], [==== 9], [==== 10], 

 [9], [#check], [X], [#check], [#check], [X], [X], [X], [Ended Prog], [], [],

  [10], [#check], [#check], [#check], [X], [#check], [#check], [X], [#check], [#check], [#check],

  [11],  [#check], [#check], [#check], [X],  [#check], [#check], [X],  [#check], [X], [X],

  [12], [X], [✔], [#check], [X], [X], [Ended Prog], [], [], [], [],

  [13], [✔], [#check], [X], [Ended Prog], [], [], [], [], [], [],

  [14], [#check],  [#check], [#check], [X],  [#check], [Ended Prog], [], [], [], [], 

  [15],  [#check], [#check], [#check], [X],  [#check], [#check], [X],  [#check], [X], [Ended Prog],

  [16],  [#check], [#check], [#check], [X],  [#check], [#check], [X],  [#check], [X], [X],

  [17],  [#check], [#check], [#check], [X], [#check], [#check], [X],  [#check], [Ended Prog], [],

  [18],  [#check], [X],  [#check], [#check], [X],  [#check], [#check], [#check], [#check], [X],

  [19],  [#check], [#check], [#check], [#check], [#check], [#check], [#check], [#check], [#check], [X],

  [20],  [#check], [#check], [#check], [#check], [X],  [#check], [X],  [#check], [X], [X],

  [21],  [#check], [#check], [#check], [#check], [#check], [#check], [#check], [#check], [#check], [X],

  [22],  [#check], [#check], [#check], [X], [X],  [#check], [X],  [#check], [#check], [X],

  [23], [#check], [#check], [#check], [X], [End Prog]
)

=== Post-Test Edit
#block(
  width: 100%,
  fill: rgb("FFEAE8"),
  inset: 8pt,
  radius: 4pt,
  [*Problem Analysis: Timing* \
Ran out of time during autonomous runs, and therfor didn't get maximum points],
)

#block(
  width: 100%,
  fill: rgb("EEEEFF"),
  inset: 8pt,
  radius: 4pt,
  [*Solution*
- Changed function that limited time to boolean to speed up route
- Made delays shorter])

#block(
  width: 100%,
  fill: rgb("FFFEEB"),
  inset: 8pt,
  radius: 4pt,
  [*Code* \
[Insert Image]]
)

#block(
  width: 100%,
  fill: rgb("FFEAE8"),
  inset: 8pt,
  radius: 4pt,
  [*Problem Analysis: Intaking* \
Often touched triball robot meant to intake but couldn't actually Intake
],
)

#block(
  width: 100%,
  fill: rgb("EEEEFF"),
  inset: 8pt,
  radius: 4pt,
  [*Solution*
- Started the Intake before reaching triball and sped it up to 100% speed])

#block(
  width: 100%,
  fill: rgb("FFFEEB"),
  inset: 8pt,
  radius: 4pt,
  [*Code* \
[Insert Image]]
)

#block(
  width: 100%,
  fill: rgb("FFEAE8"),
  inset: 8pt,
  radius: 4pt,
  [],
)

#block(
  width: 100%,
  fill: rgb("EEEEFF"),
  inset: 8pt,
  radius: 4pt,
  [])

  // Vertical intake sketch.png
  
  #block(
  width: 100%,
  fill: rgb("FFFEEB"),
  inset: 8pt,
  radius: 4pt,
  []
)


=== Final Code

#pagebreak()

= Non-Goal Side Autonomous Testing
