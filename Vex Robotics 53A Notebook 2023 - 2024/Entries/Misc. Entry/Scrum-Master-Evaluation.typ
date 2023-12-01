#set page(header: [ VR
  #h(1fr)
  November 4, 2023
])


= SCRUM MASTER EVALUATION
\

== Key Problems

#block(
  width: 100%,
  fill: rgb("FFEAE8"),
  inset: 8pt,
  radius: 4pt,
  [
    === Catapult Malfunctions
  - Unsure why catapult got stuck
  - Catapult didn’t have enough range
  
    > Couldn’t shoot triballs across middle barrier
    
    > The gear ratio didn’t provide enough torque to pull back enough rubber bands to shoot triballs over the middle barrier
    
  - Ratchet is not strong enough

    > Catapult would occasionally turn against the ratchet
    
    > Randomly released
      
=== Intake Malfunctions

  - Intake was bending inwards towards triballs
  
  - This may have worsened with wear on intake during matches
  - Bending caused too much compression on triballs
  - Force of wheels spinning couldn’t overcome the force on compression of the triball

=== Autonomous

  - Our autonomous programs were not very reliable
  - Require more tuning and testing in the weeks before our next tournament

  ],
)

== Sprint Timeline

#block(
  width: 100%,
  fill: rgb("EEEEFF"),
  inset: 8pt,
  radius: 4pt,
  [
   
  
- First sprint ended with our first tournament of the season

- Next sprint will last until our next tournament: December 2, 2023

- 7 official meetings until tournament
- Plan may change if 
  + team schedules more/less meeting
  + 53A meets alone
\
  ])

== Timeline
\
#box(height: 450pt,
 columns(2)[
   #set par(justify: true)
   
   #set align(center)
   
   #rect[11/10/23]
   #line(end: (0%, 5%))
   #rect[11/11/23]
   #line(end: (0%, 5%))
   #rect[11/17/23]
   #line(end: (0%, 5%))
   #rect[11/18/23]
   #line(end: (0%, 5%))
   #rect[11/24/23]
   #line(end: (0%, 5%))
   #rect[11/25/23]
   #line(end: (0%, 5%))
   #rect[12/1/23]
   
   #set align(left)
   #rect[- Brainstorm intake and catapult solutions
         - Design new catapult
        ]
   #line(end: (0%, 1%))
   #rect[- Assemble new catapult
         - Design new intake
        ]
   #line(end: (0%, 2%))
   #rect[- Test catapult
         - Assemble new intake
        ]
   #line(end: (0%, 1%))
   #rect[- Test intake
         - Test + tune autonomous
        ]
   #line(end: (0%, 1.5%))
   #rect[- Test + tune autonomous
         - Driver practice
        ]
   #line(end: (0%, 1%))
   #rect[- Test + tune autonomous
          - Driver practice
        ]
   #line(end: (0%, 1%))
   #rect[- Test + tune autonomous
          - Driver practice
        ]
 ]
)

  