geometry
getOffsetVectorForOrigin: aSymbol
	"Return the vector which resembles the difference between an origin and the center of the ball."
 	(aSymbol = #right) ifTrue: [^ self radiusVectorNormal].
	(aSymbol = #top) ifTrue: [^ self radiusVector].
	(aSymbol = #left) ifTrue: [^ self radiusVectorNormal negated]