#set page(header: [ ZZ
  #h(1fr)
  November 3, 2023
])

= CATAPULT CODE 3
\
Today we tested and adjusted the catapult, tested auton functions, and started tuning _kP_ and _kD_ values.

== PID Theory

Today, I realized that I never fully explaned what PID is and why I use it in so much of our code.

=== PID  stands for:
- Proportional
- Integral
- Derivative
\
Each term represents a value, which are all added together to get the final output. This is an iterative process, meaning it is repeated until the goal (such as an accurate turn angle) is met.

\
#set align(center)
#grid(
  columns: (75pt, 45pt, 75pt, 45pt, 100pt, 43pt, 75pt),
  rows: (60pt, auto),
  gutter: 2pt,
  [#rect[Takes input from sensor]],
  [\

  ----------->],
  [#rect[Compares input to target value]],
  [\

  ----------->],
  [#rect[Use comparison to  adjust output value]],
  [\

  ----------->],
  [#rect[Bring input closer to target]],
  
)

#set align(left)
#block(
  width: 100%,
  fill: rgb("FCF4FF"),
  inset: 8pt,
  radius: 4pt,
  [==== Proportional: 
  - Simplest Term 
- Finds the difference between current value of sensor and target value (*error*)\
  > error = target value - current value
- Goal is to get to 0 error
- Uses difference to calculate motor's output value
- Bigger error → more output
- The output is PROPORTIONAL to the error
- Output decreases when approaching the target
- When the measured value reaches the target, output = 0
\
Example \
-  if you were using a motor to lift an arm to a certain height, error = height you are trying to lift it to - the height it is currently at 
- The higher the error is, the more the proportional term adds to the output \
  > the further the arm is from its target height, the greater the power of the motor is 
- *It will cover the distance quickly when it is far away, but slow down when it gets close so it does not overshoot the target* \
  > Most common use of PID loops
]
)



#block(
  width: 100%,
  fill: rgb("FFF5FC"),
  inset: 8pt,
  radius: 4pt,
  [==== Integral: 
- Sometimes error becomes very low, but doesn't reach 0
- With just the P-term, the program wastes time by stopping before it reaches the target
- Even when target is reached, output shouldn't always = 0
- Some components, like lifts, need constant power or they fall back down\
  > Removing power would start an infinite loop of corrections
\
- These problems stem from the fact that the proportional section deletes & recalculates its value after it’s used
- The integral term solves this problem by adding up (or integrating) the total of the error over time. 
- Every time the error is calculated it adds the error to a total
- This total is saved
\
- This data can show trends that let the program know that a certain constant power helps reduce the need for corrections
- This total still has its value when the error is zero
\
Example
- With the arm, the I-term continues to give the motor power even if it is at the target height, so it can stay up despite being pulled down by gravity. 
- Even if the total is not precisely enough to hold the target value, it will keep accumulating over time until it gets there]
)


#block(
  width: 100%,
  fill: rgb("F2FFFF"),
  inset: 8pt,
  radius: 4pt,
  [==== Derivative: 
- A derivative is the rate that something changes
- high number = a lot of change \
  > (Ex. slamming a car’s gas pedal and accelerating)
- Same for high negative numbers 
  > (Ex. the harder you apply your breaks, the greater your negative derivative of speed)
- Lower number = little change
- 0 means no change, the value is constant
\
- Want to reduce the derivative with each iteration, goal is 0
- Derivative is found by comparing the current error to what the error was the last time it was calculated
- The closer they are, the better
\
- *This term is used with the current error to change course without over/undershooting*]
)

#block(
  width: 100%,
  fill: rgb("F1FFF2"),
  inset: 8pt,
  radius: 4pt,
  [==== Coefficients
- Each term has one
- kP, kI,  kD
  - Constant of proportion → P
  - Constant of integration → I
  - Constant of derivation → D
  \
- Multiplier of output for each term
- Control weight of each term, compared to others
- Adjusted through tuning
  - Testing values, and changing based of efficiency
\
*Goal: find lowest time required to get to the target value, without overshooting or stopping early*]
)

#block(
  width: 100%,
  fill: rgb("F3F3FF"),
  inset: 8pt,
  radius: 4pt,
  [==== Partial PID
- Using fewer than 3 terms
- Unused terms: Coefficient = 0, no weight
\
- Pros: All three terms not always needed, more simple, avoid integral windup
- Cons: Less precise
\
- Integral Windup\
  > When error is very high, Integral (I) term get very high, very quickly \
  > I term can’t go down until reaches target
- Problem
  - Get to target
  - I term is high
  - I adds power to output
  - overshoots target
  - If I term is unneeded, disableing it removes issue]
)







== Catapult Testing
#figure(
image("/Images/Code Images/isCataReady.png"),
caption: [Uses a range of angles found after testing to check whether catapult is fully lowered])

=== Catapult Driver Control Code
- Catapult position is stored in an int, _cataPosition_
- Catapult is fully lowered when between rotation values 35200 and 36000 as defined by the two floats in lines 101 and 102
- *Lines 104 - 111*: If the catapult position is between 35200 and 36000, this boolean returns true, if it isn’t, the boolean is false
#figure(image("/Images/Code Images/CataButtons.png", width: 100%), caption: [Two buttons control catapult movement by switching the catapult state])

#pagebreak()

=== Constant Fire
- *Line 163*: Checks if the up button on the controller has been newly pressed since the last time the function was called
- *Lines 164 - 165*: If the button is pressed, and the current state of the catapult is _ConstantFire_, change the state of the catapult to _Resetting_
- *Lines 166 - 168*: If the button is pressed, and the current state of the catapult is not _ConstantFire_, change the state of the catapult to _ConstantFire_
=== Single Fire
- *Line 172*: Checks is the down button on the controller is pressed
- *Lines 173 - 175*: If the _CatapultState_ is ready, set the catapult state to _SingleFire_

#figure(image("/Images/Code Images/CataSwitch.png"), caption: [Switch statement used for the various different states of the catapult])
\
- Rotation sensor angle is stored in _catapultPosition_
- Print statement used to check value of _catapultPosition_


=== Catapult Switch Statement
- *Lines 183 - 187*: if the catapult state is _Resetting_, set motor power to 50. \
  > If _isCataReady_ returns true, the catapult state is set to _Ready_
- *Lines 189 - 194*: If catapult state is _Ready_, check the value of _isCataReady_. If catapult is ready, brake motors
- *Lines 195 - 200*: If catapult state is _SingleFire_, the motor power is set to 70, and the catapult state is set to _Resetting_ if _isCataReady_ returns false
- *Lines 201 - 204*: If the catapult state is _ConstantFire_, set the motor power to 70

