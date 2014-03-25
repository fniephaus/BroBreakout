collision handling
reflectedDirectionOf: aVector at: collisionPoint
	| reflectionFactor |
	reflectionFactor := 1 @ 1.
	
	(self bounds corners includes: collisionPoint) ifTrue: [
		reflectionFactor := (-1) @ (-1)]
	ifFalse: [
		((collisionPoint y = self bounds top) or: (collisionPoint y = self bounds bottom))
			ifTrue: [
				reflectionFactor := 1 @ (-1)];
			ifFalse: [
				reflectionFactor := (-1) @ 1]].

	^ aVector * reflectionFactor