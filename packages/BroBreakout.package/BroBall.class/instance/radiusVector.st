accessing
radiusVector
	| directionVectorLength |
	directionVectorLength := self direction dist: 0 @ 0.

	^ self direction * self class radius / directionVectorLength