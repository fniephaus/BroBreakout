collision handling
reflectedDirectionOf: aVector at: collisionPoint
	| offset angle newVector aVectorLength |

	offset := (collisionPoint x) - (self center x).
	angle := offset / ((self bounds width) / 2) * self class maximumAngle.
	aVectorLength := aVector dist: 0 @ 0.
	newVector := 0 @ (-1) * aVectorLength.
	
	(self isTopRacket) ifTrue: [
			newVector := 1 @ (-1) * newVector.	
			angle := -1 * angle].

	newVector := self rotate: newVector around: angle.
	^ newVector