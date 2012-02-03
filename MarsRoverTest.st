<?xml version="1.0"?>

<st-source>
<time-stamp>From VisualWorks® Download, 7.8 of March 30, 2011 on February 1, 2012 at 8:54:20 AM</time-stamp>


<component-created>
<name>MarsRoverTest</name> <type>package</type>
</component-created><!-- Package MarsRoverTest* -->


<component-property>
<name>MarsRoverTest</name> <type>package</type>
<property>packageName</property> <value>'MarsRoverTest'</value>
</component-property>

<class>
<name>TestMarsRover</name>
<environment>Smalltalk</environment>
<super>SUnit.TestCase</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>MarsRoverTest</package>
</attributes>
</class>

<methods>
<class-id>TestMarsRover class</class-id> <category>instance creation</category>

<body package="MarsRoverTest" selector="new">new	"Answer a newly created and initialized instance."	^super new initialize</body>
</methods>


<methods>
<class-id>TestMarsRover</class-id> <category>initialize-release</category>

<body package="MarsRoverTest" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	^self</body>
</methods>

<methods>
<class-id>TestMarsRover</class-id> <category>Testing</category>

<body package="MarsRoverTest" selector="testGridCreation1">testGridCreation1	| grid |	grid := Grid x: 1 y: 1.	self assert: grid locations size = 1.	self assert: (grid locations first x = 1 and: [grid locations first y = 1])</body>

<body package="MarsRoverTest" selector="testSettingTheRoverInitialLocation">testSettingTheRoverInitialLocation	| rover location |	rover := MarsRover new.	location := Location x: 1 y: 1.	rover location: location.	self assert: rover location = location.</body>

<body package="MarsRoverTest" selector="testTurnLeft">testTurnLeft	| rover |	rover := MarsRover new.	rover turnLeft.	self assert: rover turnedLeft.</body>

<body package="MarsRoverTest" selector="testSettingTheRoverInitialDirection">testSettingTheRoverInitialDirection	| rover |	rover := MarsRover new.	rover initialDirection: #north.	self assert: rover isFacingNorth.	self assert: rover direction == #north.</body>

<body package="MarsRoverTest" selector="testGridCreation3">testGridCreation3	| grid location |	grid := Grid x: 1 y: 1.	location := grid locations first.	self assert: location northLocation == location.	self assert: location southLocation == location.	self assert: location eastLocation == location.	self assert: location westLocation == location.	self assert: grid lowerLeftLocation == location.	self assert: grid lowerRightLocation == location.	self assert: grid upperLeftLocation == location.	self assert: grid upperRightLocation == location.</body>

<body package="MarsRoverTest" selector="testMoveBackward">testMoveBackward	| rover grid oldLocation |	grid := Grid x: 2 y: 2.	rover := MarsRover new.	rover location: grid upperRightLocation.	rover initialDirection: #east.	oldLocation := rover location.	rover moveBackward.	self assert: rover location = oldLocation westLocation.</body>

<body package="MarsRoverTest" selector="testLocationNeighbors">testLocationNeighbors	| myX myY myLocation northLocation southLocation eastLocation westLocation |	myX := 3.	myY := 4.	myLocation := Location x: myX y: myY.	northLocation := Location x: myX y: myY + 1.	southLocation := Location x: myX y: myY - 1.	eastLocation := Location x: myX + 1 y: myY.	westLocation := Location x: myX - 1 y: myY.	myLocation		northLocation: northLocation;		southLocation: southLocation;		eastLocation: eastLocation;		westLocation: westLocation.	self assert: myLocation northLocation = northLocation.	self assert: myLocation southLocation = southLocation.	self assert: myLocation eastLocation = eastLocation.	self assert: myLocation westLocation = westLocation.</body>

<body package="MarsRoverTest" selector="testMoveForward">testMoveForward	| rover grid oldLocation |	grid := Grid x: 2 y: 2.	rover := MarsRover new.	rover location: grid lowerLeftLocation.	rover initialDirection: #east.	oldLocation := rover location.	rover moveForward.	self assert: rover location = oldLocation eastLocation.</body>

<body package="MarsRoverTest" selector="testGridCreation2">testGridCreation2	| grid xSize ySize |	xSize := 2.	ySize := 2.	grid := Grid x: xSize y: ySize.	1 to: xSize do:		[:x | 1 to: ySize do:			[:y | self should: [(grid locations detect: [:each | each x = x and: [each y = y]]) notNil]]]</body>

<body package="MarsRoverTest" selector="testThatLocationIsInitiallyUnoccupied">testThatLocationIsInitiallyUnoccupied	self deny: (Location x: 1 y: 1) isOccupied</body>

<body package="MarsRoverTest" selector="testTurnRight">testTurnRight	| rover |	rover := MarsRover new.	rover turnRight.	self assert: rover turnedRight.</body>
</methods>



</st-source>
