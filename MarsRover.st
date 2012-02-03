<?xml version="1.0"?>

<st-source>
<time-stamp>From VisualWorks® Download, 7.8 of March 30, 2011 on February 1, 2012 at 8:54:12 AM</time-stamp>


<component-created>
<name>MarsRover</name> <type>package</type>
</component-created><!-- Package MarsRover* -->


<component-property>
<name>MarsRover</name> <type>package</type>
<property>packageName</property> <value>'MarsRover'</value>
</component-property>

<class>
<name>Location</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>x y northLocation southLocation eastLocation westLocation isOccupied </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>MarsRover</package>
</attributes>
</class>

<class>
<name>MarsRover</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>lastMoveDirection direction location </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>MarsRover</package>
</attributes>
</class>

<class>
<name>Grid</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>locations x y </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>MarsRover</package>
</attributes>
</class>

<methods>
<class-id>Location class</class-id> <category>instance creation</category>

<body package="MarsRover" selector="x:y:">x: anXCoordinate y: aYCoordinate	^ self new x: anXCoordinate y: aYCoordinate.</body>

<body package="MarsRover" selector="new">new	"Answer a newly created and initialized instance."	^super new initialize</body>
</methods>


<methods>
<class-id>Location</class-id> <category>accessing</category>

<body package="MarsRover" selector="southLocation">southLocation	^southLocation</body>

<body package="MarsRover" selector="southLocation:">southLocation: anObject	southLocation := anObject</body>

<body package="MarsRover" selector="northLocation">northLocation	^northLocation</body>

<body package="MarsRover" selector="x">x	^x</body>

<body package="MarsRover" selector="northLocation:">northLocation: anObject	northLocation := anObject</body>

<body package="MarsRover" selector="isOccupied:">isOccupied: anObject	isOccupied := anObject</body>

<body package="MarsRover" selector="westLocation">westLocation	^westLocation</body>

<body package="MarsRover" selector="y">y	^y</body>

<body package="MarsRover" selector="westLocation:">westLocation: anObject	westLocation := anObject</body>

<body package="MarsRover" selector="isOccupied">isOccupied	^isOccupied</body>

<body package="MarsRover" selector="eastLocation">eastLocation	^eastLocation</body>

<body package="MarsRover" selector="eastLocation:">eastLocation: anObject	eastLocation := anObject</body>

<body package="MarsRover" selector="y:">y: anObject	y := anObject</body>

<body package="MarsRover" selector="x:">x: anObject	x := anObject</body>
</methods>

<methods>
<class-id>Location</class-id> <category>printing</category>

<body package="MarsRover" selector="printOn:">printOn: aStream	aStream nextPutAll: '('.	self x printOn: aStream.	aStream nextPutAll: ', '.	self y printOn: aStream.	aStream nextPutAll: ')'.</body>
</methods>

<methods>
<class-id>Location</class-id> <category>initialize-release</category>

<body package="MarsRover" selector="x:y:">x: anXCoordinate y: aYCoordinate	self 		x: anXCoordinate;		y: aYCoordinate;		isOccupied: false;		yourself.</body>

<body package="MarsRover" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	^self</body>
</methods>


<methods>
<class-id>MarsRover class</class-id> <category>instance creation</category>

<body package="MarsRover" selector="new">new	"Answer a newly created and initialized instance."	^super new initialize</body>
</methods>


<methods>
<class-id>MarsRover</class-id> <category>moving</category>

<body package="MarsRover" selector="moveForward">moveForward	self direction == #north ifTrue: [^self moveNorth].	self direction == #south ifTrue: [^self moveSouth].	self direction == #east ifTrue: [^self moveEast].	self direction == #west ifTrue: [^self moveWest].</body>

<body package="MarsRover" selector="moveBackward">moveBackward	self direction == #north ifTrue: [^self moveSouth].	self direction == #south ifTrue: [^self moveNorth].	self direction == #east ifTrue: [^self moveWest].	self direction == #west ifTrue: [^self moveEast].</body>

<body package="MarsRover" selector="turnRight">turnRight	lastMoveDirection := #right.	direction == #north		ifTrue:			[Transcript cr; show: 'Now facing east.'.			^direction := #east].	direction == #south		ifTrue:			[Transcript cr; show: 'Now facing west.'.			^direction := #west].	direction == #east		ifTrue:			[Transcript cr; show: 'Now facing south.'.			^direction := #south].	direction == #west		ifTrue:			[Transcript cr; show: 'Now facing north.'.			^direction := #north]</body>

<body package="MarsRover" selector="turnLeft">turnLeft	lastMoveDirection := #left.	direction == #north		ifTrue:			[Transcript cr; show: 'Now facing west.'.			^direction := #west].	direction == #south		ifTrue:			[Transcript cr; show: 'Now facing east.'.			^direction := #east].	direction == #east		ifTrue:			[Transcript cr; show: 'Now facing north.'.			^direction := #north].	direction == #west		ifTrue:			[Transcript cr; show: 'Now facing south.'.			^direction := #south]</body>
</methods>

<methods>
<class-id>MarsRover</class-id> <category>queries</category>

<body package="MarsRover" selector="movedBackward">movedBackward	^lastMoveDirection == #backward</body>

<body package="MarsRover" selector="movedForward">movedForward	^lastMoveDirection == #forward</body>

<body package="MarsRover" selector="isFacingNorth">isFacingNorth	^direction == #north</body>

<body package="MarsRover" selector="turnedLeft">turnedLeft	^lastMoveDirection == #left</body>

<body package="MarsRover" selector="turnedRight">turnedRight	^lastMoveDirection == #right</body>
</methods>

<methods>
<class-id>MarsRover</class-id> <category>accessing</category>

<body package="MarsRover" selector="location">location	^location</body>

<body package="MarsRover" selector="direction">direction	^direction</body>

<body package="MarsRover" selector="location:">location: aLocation	location := aLocation. </body>
</methods>

<methods>
<class-id>MarsRover</class-id> <category>moving - protected</category>

<body package="MarsRover" selector="moveEast">moveEast	| canMove |	canMove := self location eastLocation isOccupied not.	canMove		ifFalse:			[Transcript cr; show: 'Cannot move east due to obstacle']		ifTrue:			[self location isOccupied: false.			self location: self location eastLocation.			self location isOccupied: true.			Transcript cr; show: 'Moved east to ', self location printString].	^canMove</body>

<body package="MarsRover" selector="moveNorth">moveNorth	| canMove |	canMove := self location northLocation isOccupied not.	canMove		ifFalse:			[Transcript cr; show: 'Cannot move north due to obstacle']		ifTrue:			[self location isOccupied: false.			self location: self location northLocation.			self location isOccupied: true.			Transcript cr; show: 'Moved north to ', self location printString].	^canMove</body>

<body package="MarsRover" selector="moveWest">moveWest	| canMove |	(canMove := self location westLocation isOccupied not)		ifFalse:			[Transcript cr; show: 'Cannot move west due to obstacle']		ifTrue:			[self location isOccupied: false.			self location: self location westLocation.			self location isOccupied: true.			Transcript cr; show: 'Moved west to ', self location printString].	^canMove</body>

<body package="MarsRover" selector="moveSouth">moveSouth	| canMove |	(canMove := self location southLocation isOccupied not)		ifFalse:			[Transcript cr; show: 'Cannot move south due to obstacle']		ifTrue:			[self location isOccupied: false.			self location: self location southLocation.			self location isOccupied: true.			Transcript cr; show: 'Moved south to ', self location printString].	^canMove</body>
</methods>

<methods>
<class-id>MarsRover</class-id> <category>initialize-release</category>

<body package="MarsRover" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	^self</body>

<body package="MarsRover" selector="initialDirection:">initialDirection: aDirection	direction := aDirection.</body>
</methods>


<methods>
<class-id>Grid class</class-id> <category>instance creation</category>

<body package="MarsRover" selector="x:y:">x: xSize y: ySize	^self new x: xSize y: ySize</body>

<body package="MarsRover" selector="new">new	"Answer a newly created and initialized instance."	^super new initialize</body>
</methods>


<methods>
<class-id>Grid</class-id> <category>initialize-release</category>

<body package="MarsRover" selector="createLocationsWidth:height:">createLocationsWidth: xSize height: ySize	1 to: xSize		do: 			[:x |			1 to: ySize				do: 					[:y |					| location |					location := Location x: x y: y.					locations add: location]]</body>

<body package="MarsRover" selector="x:y:">x: xSize y: ySize	x := xSize.	y := ySize.	self locations: OrderedCollection new.	self createLocationsWidth: xSize height: ySize.	self connectLocations.</body>

<body package="MarsRover" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	^self</body>

<body package="MarsRover" selector="connectLocations">connectLocations	self locations do:		[:thisLocation |		| northY southY eastX westX |		northY := thisLocation y + 1.		southY := thisLocation y - 1.		eastX := thisLocation x + 1.		westX := thisLocation x - 1.		southY &lt; 1 ifTrue: [southY := y].		northY &gt; y ifTrue: [northY := 1].		eastX &gt; x ifTrue: [eastX := 1].		westX &lt; 1 ifTrue: [westX := x].		thisLocation northLocation: (locations detect: [:each | each x = thisLocation x and: [each y = northY]]).		thisLocation southLocation: (locations detect: [:each | each x = thisLocation x and: [each y = southY]]).		thisLocation eastLocation: (locations detect: [:each | each x = eastX and: [each y = thisLocation y]]).		thisLocation westLocation: (locations detect: [:each | each x = westX and: [each y = thisLocation y]])]</body>
</methods>

<methods>
<class-id>Grid</class-id> <category>accessing</category>

<body package="MarsRover" selector="upperRightLocation">upperRightLocation	^self locations detect: [:each | each x = x and: [each y = y]]</body>

<body package="MarsRover" selector="upperLeftLocation">upperLeftLocation	^self locations detect: [:each | each x = 1 and: [each y = y]]</body>

<body package="MarsRover" selector="y">y	^y</body>

<body package="MarsRover" selector="x:">x: anObject	x := anObject</body>

<body package="MarsRover" selector="y:">y: anObject	y := anObject</body>

<body package="MarsRover" selector="locations">locations	^locations</body>

<body package="MarsRover" selector="locations:">locations: anObject	locations := anObject</body>

<body package="MarsRover" selector="lowerRightLocation">lowerRightLocation	^self locations detect: [:each | each x = x and: [each y = 1]]</body>

<body package="MarsRover" selector="lowerLeftLocation">lowerLeftLocation	^self locations detect: [:each | each x = 1 and: [each y = 1]]</body>

<body package="MarsRover" selector="x">x	^x</body>

<body package="MarsRover" selector="locationAtX:y:">locationAtX: xValue y: yValue	^self locations detect: [:each | each x = xValue and: [each y = yValue]]</body>
</methods>



</st-source>
