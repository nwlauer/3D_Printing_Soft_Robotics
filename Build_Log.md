
### Progress

(Jan. 15th, 2018)

It has been a while since I did an update, quite a bit has happened.

I decided to stick with the soldering iron method of creating the actuator for prototyping, in the future if it works I would like to work on creating a tool to do this with geometry to melt the specific locations of the actuator. 

Working on better settings for the top portion I found that while the rectilinear infill had the tendency to have gaps seen below, even when the outline overlap setting was increased. 

![Rect](https://i.imgur.com/AmHFtAim.jpg)

When doing infill there is a minimum line length for filling the part, the default for my printer in simplify3d was 2 mm. The circular geometry there is a line length less than 2 mm at the edges of the circle, the obvious solution would be to decrease this number until you get a solid infill. I, however, I found a better solution to be switching to a concentric infill which eliminates the issue at the edge of the circle and moves it to the center where the concentric circle to fill the center has a circumference less than 2mm, however I found that since I was over extruding and had the nozzle down further than normal it would completely fill in the center. The results of this change are bellow.

![Conc](https://i.imgur.com/vUx0eV7l.jpg)
 

A new issue arises when the print finished, and a blob would be left in the center and the nozzle would smear over the top of the part when returning to its home position. I solved this adding some code to the end script to retract some and lift the z 10 mm. 

```
G92 E0 ; reset extruder distance
G1 E-1 F500 ; Retract 1 mm
G92 Z0 ; Relative Position Z
G1 Z10 ; Raise Z 10 mm
```

I have included my FFF process settings in the project folder for reference.


I used Loctite flexible adhesive to bond together the actuators. I only realized after that the location of the adhered portion should be closer to the center of the actuator so there can be the maximum amount of movement upon actuation.

![PartialBuild](https://i.imgur.com/7tgr2Ull.jpg)



Additionally, I got two mini pumps from eBay, they are parker BLDC diaphragm pumps with feedback. Unfortunately, I accidentally shorted out one hooking it up to the power supply since I was using exposed alligator clips, I am now only using the covered type to avoid this again. I have a metro express board and some circuit python code to feed a PWM signal to the speed control pin on the motor but want to wait until I order another one before I try it, so I always have one working in reserve.

```
import board
import pulseio
from analogio import AnalogIn

analog_in = AnalogIn(board.A1) #Initialize AnalogIn
 
def duty_cycle_value(pin): #Get data from potentiometer
    return pin.value

pump = pulseio.PWMOut(board.D13, frequency=15000, duty_cycle=0) # Initialize Pump PWM. Frequency from pump data sheet

while True:
    pump.duty_cycle = duty_cycle_value(analog_in) # Loop PWM signal with duty cycle defined by pot value
```
    



Next, I want to design a manifold and order some solenoid valves for control.

 

(Sept. 18th, 2018)

I worked a bit on a new actuator design for a eventual soft robotic worm design I am working on. The design was a pillow type actuator as seen below. 

[Onshape Design](https://cad.onshape.com/documents/3c669edf96e152dec33955a7/w/b0888245c5fd9d2512150394/e/fc91afc5c4801dd98c8136da)

The first print failed due to the flexible filament not being able to bridge the distance across the actuator. This print did however show a strong bottom layer. 

![FirstTry](https://i.imgur.com/ZGPEAIE.jpg)

![FirstTry2](https://i.imgur.com/a67Lr7A.jpg)

Instead of dialing in speeds and temperature to possibly allow the required bridging, I moved forward to the next design which split the actuator into two halves and also adjusted the size of the tubing hole as the previous version was a bit too small. The resulting design and print is seen below.


![SecondTry1](https://i.imgur.com/l3kidNH.jpg)


![SecondTry2](https://i.imgur.com/XGx8kjQ.jpg)


The print failed much like the one before but to a lesser extent. The higher temperature resulted in some more heavy stringing however this stinging makes me think that maybe running the top layer at travel speeds might produce better results, never the less I think adding two additional layers on top should produce a airtight top. 

After seeing the failed prints before which were just the bottom layer, I had the idea of trying to take those and weld them to the top of the actuator to possibly make a functioning one. I used a soldering iron to melt around the circumference of the top and it seemed to work as seen below. The center separator was a bit hard to weld but I am not sure of the wall's ability to hold air itself, I will try making it thicker in future iterations. 


![WeldedActuator](https://i.imgur.com/xdRByIV.jpg)


ASIDE: During the printing of the second actuator the printer stopped extruding at a usual layer height that it has done before with other actuators. I had previously never found a definite fix for this, however thinking about the repeatability, it seemed to happen when it started printing the perimeter layers and I figured a possible mode of failure was speed and the hot end not being able to keep up with the amount of material being extruded, I tested this by increasing the temperature and lowering the speed slightly, this seemed to work, but time will tell weather this is a solid fix for this problem or just a fluke.

---------------------------------------
(Sept. 10th, 2018)

After attempting to print the adapter described in the previous post, I was unable to get a quality print with a center hole even at .1 mm layer height, while I could try a smaller nozzle and possible achieve success I decided to go back to the drawing board and try a different approach and a more simple one at that. Instead of an external adapter I decided on an internal adapter that fits completely in the larger tube and around the smaller one. This eliminates the issues of trying to print small enough to insert into the 1/8" ID on the inner tube, instead the limiting dimension on this design is the outer diameter of the smaller tube. This design also allows for faster new iterations adjusting the tolerances because of the simply design. 

After a moderately embarrassingly mistake where I used the diameter dimension instead of the radius when revolving the part, I got a functional adapter seen below. This worked however testing it on the diaphragm pump with the soft robot turned out to come close to stalling the pump and unfortunately my power supply tops out at a bit over 1 and a half amps. 


![Tubing](http://i.imgur.com/sgQUVL8.jpg)

Links:

[Thingiverse](https://www.thingiverse.com/thing:3095760)
[On-Shape](https://cad.onshape.com/documents/92cfda232b528470463f2aaa/w/1ba712666e28d8060b0fa5f9/e/f20b0e49f8c2d650ff1c5602)

Later however I realized I have a bicycle pump which I thought might be worth a try and it worked great. I will now add a electronic piston to the list of sub projects to run the robot. 

---------------------------------------------------------------------------------

(August 26th, 2018)

I got hold of a larger diaphragm pump that should be able to provide the pressure I need to cause maximum deflection or at least more deflection then I have been getting with the peristaltic pumps. The pump is made for larger tubing and doesn't fit the actuators so I had to model an adapter, I chose to make it parametric so I can change it to connect different sized tubing in the future if I need to and put the design on thingiverse. 

Thingiverse Link

[ThingiverseLink](http://www.thingiverse.com/thing:3069449)

On-Shape Link to Customizable Adapter: 


[OnshapeLink](http://cad.onshape.com/documents/9ce4cfa03e624a2dd4b5f2d3/w/101f37edd98fbd5f7c71c180/e/683bc8de0e68daec63e576c4)


----------------------------------------------------------------------------

(August 6th, 2018)

I am currently working on an enclosure for my printer which has delayed this project progress slightly, but I wanted to detail some of the design parameters that have worked so far as well as some of my plans for testing in the future. 

The main parameter I have become confident in is the wall thickness which is 2 perimeters optimally roughly with a roughly .45 millimeter, as far as top and bottom thickness between 4 and 6 layers of .2 mm work well, less leads to holes still present in the top surface which air can escape and more leads to a much stiffer actuator that won’t extend well. Channel thickness is something I would still like to experiment with more especially with different designs. For the most part I use around 1.2 mm for the design however the actual thickness is closer to 1mm because of the over extrusion in the sidewalls. 

Below are some pictures of the settings I used in Simplify3D for the actual configurations feel free to contact me, however I think there are not useful for anything other than reference because of the sensitivity of the process and the variability between printers with extrusion, actual layer height, extruder design, etc..

![Process Settings 1](https://i.imgur.com/ApkCcYH.png)

![Process Settings 2](https://i.imgur.com/RiTiFwb.png)

I would like to cover the following going forward

1. New design (pneunet approach)

2. Design of experiments with channel thickness 

3. Simulations with SOFA Framework

----------------------------------------------------------------------------------

(July 12, 2018)

I think the main point of leakage at this point is from the interface between the Vinyl tubing and the 3D print, I have confirmed this some by lengthening the entryway for the tubing as seen bellow and had some success as seen, next I would like to work on an adapter and modeling the ribs between the adapter and entry point to be a close fit. The current version of the actuator can be seen [here](https://cad.onshape.com/documents/02b6b1a719bd819477cb40a7/w/13e82c7ddb63d8f5073c5366/e/bbfd169c50e79385daa16018). 

![Gif](http://i.imgur.com/Q6i58dK.gif)

------------------------------------------------------------------------------------------------

![](http://www.flickr.com/photos/148557730@N02/shares/052Hjt)
Original trials were made to heat the actuators in the oven after printing which while still considered post processing the print is minimal when compared to other techniques (dipping in sealant). Later in printing it was found that this process was unneeded as I was getting reasonably air tight actuators in just increasing the extrusion multiplier (1.5 to 2) depending on printer and filament. I have been able to get away with two perimeters and still create a good actuator, the top and bottom layers must be a bit more, however this may be a limit of the design having the walls so close together and the slicer having trouble getting good solid infill. 
![Messy Robots](https://i.imgur.com/adRVucjm.png)


---------------------------------------------------------------------
(August 2017)
I recently just finished a 3D Printed biomimetic flower. The main purpose of this project was to get more familiar with the capabilities of straight 3D Printed pneumatic artificial muscles. While much has been done as far as 3D printing the molds and casting the muscles in silicon or some other curing elastomer not much has been done on direct 3D printing of them. Ultimately, I think there is a ways to go but direct Manufacturing the parts instead of the mold had its benefits (One solid piece, more detail and control, and ease of the process itself). Currently it seems to be limited as far as FDM printers because of the inevitable micro holes in the final print, the way this was solved by mikey77(See link in credit) using flexible sealant, while this still introduces an additional step in manufacturing I think it is better than molding in its simplicity. I still want to attempt to solve these holes by baking the printed parts hopefully allowing flow and closure of the micro-holes. Further work has been done by different people but none with results that I am seeking.


[Flower](https://imgur.com/EfdkGky)
