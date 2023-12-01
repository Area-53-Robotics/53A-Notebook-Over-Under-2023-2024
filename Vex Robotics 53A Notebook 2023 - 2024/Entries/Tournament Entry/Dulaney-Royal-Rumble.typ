#set page(header: [ VR
  #h(1fr)
  November 4, 2023
])


= DULANEY ROYAL RUMBLE TOURNAMENT REFLECTIONS
\
Today we competed in our first tournament of the Over-under season: the Dulaney Royal Rumble. 
We did well during qualifications, ranking 9th, ending by becoming the second seed of the elimination rounds. We won our first round of 16 and quarterfinals. We were defeated during semi-finals.

== Strategy
- Our robot can shoot match loads and score triballs

    - One partner will shoot match loads to goal side of field and one will score them
  
    - We can complete either part depending on alliance partner’s capabilities

== Match Analysis

    - Green: Matches we won

    - Red: Matches we lost


//~table~
//green for win
//red for lose
#table(
  columns: (2fr, 1.5fr, 1.5fr, 8fr),
  fill: (_, row) => if row > 0 and row <= 3 or row == 5 or row == 9 or row == 10 {rgb("#CCFFCC")}
  else if row == 7 or row == 8 or row == 11 { rgb("#FFCCCC") }
  //else if row == 0 { rgb("#ebccff") }
  else { white },
  align: (left),
  inset: 5pt,
  
  [*Q\#*], [*Auton W/L*], [*Score*], [*Notes*], 
  [6], [Tie], [85 - 53], 
  [#set list(marker: ([•], [>]))
  *#underline[Auton]*
  - Started on side opposite to goal
  - Didn’t run a program
  *#underline[Driver Control]*
  - Wanted to match load triballs across field for alliance partner to score
  - Tried to run catapult
    - Launched once
    - Lowered for second shot, but wouldn’t shoot
    - Couldn't use original strategy
  - Decided to push triballs onto our side using wings
    - Pushed triballs 
    - Opponents match loaded near their goal over the middle barrier
  - Double zoned, and scored triballs we pushed over ourselves
  - Noticed that catapult randomly lowered and slowly released even when not being used
], 
  [11], [Tie], [72 - 55], 
  [#set list(marker: ([•], [>]))
  *  #underline[Auton]*
  - Started on side opposite to goal
  - Didn’t run a program
  *#underline[Driver Control]*
  - Strategized to score triballs that our alliance partner launched onto our side of the field
  - 1 min into match, alliance partner became stuck on load zone
    - Alliance partner quickly gained control, but failed to shoot more triballs for us to score
  - Alliance partner and us defended on opposing alliance
    - Prevented match loads from reaching their side
    - Prevented triballs from being scored
  - Towards end of match, pushed triballs on opponent’s side of field into load zones so they wouldn’t count towards their score
  - Alliance partner tried to climb, but failed to
], 
  [19], [Win], [139 - 12], 
  [#set list(marker: ([•], [>]))
    *#underline[Auton]*
  - Started on our side of field
  - Didn’t run autonomous
  *#underline[Driver Control]*
  - Scored Triballs that alliance partner launched to our side
  - Alliance partner shot many triballs very quickly
  - Strategy worked seamlessly
  - Found that intake was very efficient at scoring single triballs, when there weren’t crowds of triballs to ram using wings
  - Succeeded in climbing
], 
  [Skills Run #1], [], [25],
  [#set list(marker: ([•], [>]))
  *#underline[Driver Control]*
  - Strategy
    - Use catapult to match load triballs to goal
    - Drive to other side, use wings to ram triballs into goal
  - Launched one triball
  - Catapult lowered, but became stuck
  - Used wings to push triballs over the middle barrier
  - Drove to other side of field to score triballs using wings  
],
  [30], [Win], [63 - 26], 
  [#set list(marker: ([•], [>]))
    *#underline[Auton]*
  - Started on same side as goal
  - Won autonomous through alliance parter’s autonomous program
  *#underline[Driver Control]*
  - Alliance partner could not shoot match loads
  - Alliance partner defended on opponents while we scored triballs into our goal
    - Pushed triballs from opponents defensive zone into ours, and scored them
  - Alliance partner succeeds in climbing
], 
  [Skills Run #2], [], [20],
  [#set list(marker: ([•], [>]))
  *#underline[Driver Control]*
  - Strategy: Use intake and wings to score triballs
  - Tried to score first triball using intake
    - Intake could not outtake the triball into the goal
  - Used wings and side of robot to score triballs for the rest of the run
],
  [42], [Loss], [59 - 78], 
  [#set list(marker: ([•], [>]))
  *#underline[Auton]*
  - Started near our goal
  - Ran program to drive forward, turn, and score one triball
  - Robot went forward, hit the side of the goal, veered of course, and did not score
  *#underline[Driver Control]*
  - Strategy: Score triballs our alliance partner match loads onto our defensive zone
  - Could not execute strategy because intake was not working
    - Similarly to previous skills run
  - Defended on opposing robot match loading onto their side
    - Failed because their catapult shot over our robot
], 
  [49], [Loss], [58 - 62], 
  [#set list(marker: ([•], [>]))
  *#underline[Auton]*
  - Started on side opposite to our goal
  - Alliance partner crossed middle of field
  - Autonomous win went to opponents
  *#underline[Driver Control]*
  - Tried to push triballs over middle barrier for alliance partner to score
    - Could only use wings
    - Catapult and intake did not work
  - Alliance partner decided to defend on opponents
  - We drove triballs from the load zone to our goal
], 
  [Round of 16], [Loss], [123 - 77], 
  [#set list(marker: ([•], [>]))
  *#underline[Auton]*
  - Started on our goal’s side
  - Didn’t run autonomous program for risk of crossing middle field and losing all autonomous points
  - Alliance partner scored one alliance triball
  *#underline[Driver Control]*
  - Alliance partner shot match loads onto our side of field, we scored them
  - Succeeded in climbing
], 
  [#set text(hyphenate: true)
  Quarterfinals], [Win], [92 - 36], 
  [#set list(marker: ([•], [>]))
  *#underline[Before match]*
  - coded last minute auton that pushed alliance triball into goal from loading station
  - Robot drives forward to push triballs infront of it into side of goal
  *#underline[Auton]*
  - Started on our goal’s side
  - Program was successful
  *#underline[Driver Control]*
  - Used same strategy as first elimination match
  - Side of drivetrain started lagging
  - Didn’t climb during endgame
  *#underline[After match]*
  - After match, found that one of the motors became unscrewed from chassis
    - Axle came out of motor and wasn’t driven, so drivetrain lost power
], 
  [#set text(hyphenate: true) 
  Semifinals], [Loss], [52 - 93], 
  [#set list(marker: ([•], [>]))
  *#underline[Before match]*
  - called timeout to screw in lose motor
  - Fixed drivetrain lagging
 * #underline[Auton]*
  - Ran same program as last match
  - Not successful
    - Angle of robot to goal was not accurate
    - Triball didn’t get into goal
 * #underline[Driver Control]*
  - During match, got rammed by opponent
  - Battery became unplugged 
  - Robot was disabled for the rest of the match
], 
)