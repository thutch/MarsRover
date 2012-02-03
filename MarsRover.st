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

<body package="MarsRover" selector="x:y:">x: anXCoordinate y: aYCoordinate

<body package="MarsRover" selector="new">new
</methods>


<methods>
<class-id>Location</class-id> <category>accessing</category>

<body package="MarsRover" selector="southLocation">southLocation

<body package="MarsRover" selector="southLocation:">southLocation: anObject

<body package="MarsRover" selector="northLocation">northLocation

<body package="MarsRover" selector="x">x

<body package="MarsRover" selector="northLocation:">northLocation: anObject

<body package="MarsRover" selector="isOccupied:">isOccupied: anObject

<body package="MarsRover" selector="westLocation">westLocation

<body package="MarsRover" selector="y">y

<body package="MarsRover" selector="westLocation:">westLocation: anObject

<body package="MarsRover" selector="isOccupied">isOccupied

<body package="MarsRover" selector="eastLocation">eastLocation

<body package="MarsRover" selector="eastLocation:">eastLocation: anObject

<body package="MarsRover" selector="y:">y: anObject

<body package="MarsRover" selector="x:">x: anObject
</methods>

<methods>
<class-id>Location</class-id> <category>printing</category>

<body package="MarsRover" selector="printOn:">printOn: aStream
</methods>

<methods>
<class-id>Location</class-id> <category>initialize-release</category>

<body package="MarsRover" selector="x:y:">x: anXCoordinate y: aYCoordinate

<body package="MarsRover" selector="initialize">initialize
</methods>


<methods>
<class-id>MarsRover class</class-id> <category>instance creation</category>

<body package="MarsRover" selector="new">new
</methods>


<methods>
<class-id>MarsRover</class-id> <category>moving</category>

<body package="MarsRover" selector="moveForward">moveForward

<body package="MarsRover" selector="moveBackward">moveBackward

<body package="MarsRover" selector="turnRight">turnRight

<body package="MarsRover" selector="turnLeft">turnLeft
</methods>

<methods>
<class-id>MarsRover</class-id> <category>queries</category>

<body package="MarsRover" selector="movedBackward">movedBackward

<body package="MarsRover" selector="movedForward">movedForward

<body package="MarsRover" selector="isFacingNorth">isFacingNorth

<body package="MarsRover" selector="turnedLeft">turnedLeft

<body package="MarsRover" selector="turnedRight">turnedRight
</methods>

<methods>
<class-id>MarsRover</class-id> <category>accessing</category>

<body package="MarsRover" selector="location">location

<body package="MarsRover" selector="direction">direction

<body package="MarsRover" selector="location:">location: aLocation
</methods>

<methods>
<class-id>MarsRover</class-id> <category>moving - protected</category>

<body package="MarsRover" selector="moveEast">moveEast

<body package="MarsRover" selector="moveNorth">moveNorth

<body package="MarsRover" selector="moveWest">moveWest

<body package="MarsRover" selector="moveSouth">moveSouth
</methods>

<methods>
<class-id>MarsRover</class-id> <category>initialize-release</category>

<body package="MarsRover" selector="initialize">initialize

<body package="MarsRover" selector="initialDirection:">initialDirection: aDirection
</methods>


<methods>
<class-id>Grid class</class-id> <category>instance creation</category>

<body package="MarsRover" selector="x:y:">x: xSize y: ySize

<body package="MarsRover" selector="new">new
</methods>


<methods>
<class-id>Grid</class-id> <category>initialize-release</category>

<body package="MarsRover" selector="createLocationsWidth:height:">createLocationsWidth: xSize height: ySize

<body package="MarsRover" selector="x:y:">x: xSize y: ySize

<body package="MarsRover" selector="initialize">initialize

<body package="MarsRover" selector="connectLocations">connectLocations
</methods>

<methods>
<class-id>Grid</class-id> <category>accessing</category>

<body package="MarsRover" selector="upperRightLocation">upperRightLocation

<body package="MarsRover" selector="upperLeftLocation">upperLeftLocation

<body package="MarsRover" selector="y">y

<body package="MarsRover" selector="x:">x: anObject

<body package="MarsRover" selector="y:">y: anObject

<body package="MarsRover" selector="locations">locations

<body package="MarsRover" selector="locations:">locations: anObject

<body package="MarsRover" selector="lowerRightLocation">lowerRightLocation

<body package="MarsRover" selector="lowerLeftLocation">lowerLeftLocation

<body package="MarsRover" selector="x">x

<body package="MarsRover" selector="locationAtX:y:">locationAtX: xValue y: yValue
</methods>



</st-source>