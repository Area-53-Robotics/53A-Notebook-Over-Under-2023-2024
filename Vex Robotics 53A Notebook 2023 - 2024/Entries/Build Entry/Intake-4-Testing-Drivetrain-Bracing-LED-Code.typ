#set page(header: [VR
  #h(1fr)
  November 24, 2023
])

= Intake No. 4 Testing + Drivetrain Bracing + LED Code
#figure(image("/Images/Code Images/BlueLEDTop.png"), caption: [Counter, used to switch between 60 different colors])

=== LED Counter
- *Lines 157 & 158* Defined two int variables, _count_ and _timeCount_

  > Count is used to keep track of the current LED color and switch between them
  
  > timeCount is used to keep track of time, which decides when the count variable changes
  
- *Line 161* Changes timeCount by +1 (while loop has delay of 20 milliseconds, so it goes up every 20 milliseconds)
- *Lines 163 - 165* Everytime timeCount goes up by 30 (every 600 miliseconds), count changes
- *Lines 167 - 169* Sets count back to 1 when it goes over 60
#figure(image("/Images/Code Images/BlueLEDGradient.png"), caption: [If statement contains all colors (not all are depicted here)])

=== LED Color Changes
- *Lines 171 - 184* Depending on what number count currently is, all LEDs will be set to a certain color

#figure(image("/Images/Code Images/LEDButtons.png"), caption: [Button is used to toggle the LEDs])

=== LED Button Controls
- Created boolean named _ledsOn_
- When the Y button is pressed, _ledsOn_ becomes the opposite of what it currently is

  > Ex. If it is true, after pressing Y, it will become false

- When _ledsOn_ is true, the blueLEDs function will run, but when false, LEDs will clear, becoming blank

  > LEDs were made toggleable so that the driver can turn them off if they become too distracting