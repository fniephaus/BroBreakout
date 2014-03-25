collision handling
getNearestIntersect
	| nearestIntersect nearestDistance origins currentOrigin |
	
	nearestDistance := Float maxExactInteger..
	origins := self getLineOrigins: self tempCenter.
	
	#(#right #top #left) do: [:eachOrigin |
		| targetPoint isOutsideBounds |
		currentOrigin := origins at: eachOrigin.
		targetPoint := currentOrigin + self distanceVectorToTravel.

		self levelWorld levelBlocks do: [:eachBlock |
			| lineCollisionPoint distance |
			lineCollisionPoint := (eachBlock firstIntersectionWithLineFrom: currentOrigin to: targetPoint).

			lineCollisionPoint ifNotNil: [
				distance := currentOrigin dist: lineCollisionPoint.

				"Ensure that the collision point is not inside the Ball."
				isOutsideBounds := (self tempCenter dist: lineCollisionPoint) >= self class radius.

				((eachBlock containsPoint: currentOrigin) not and: isOutsideBounds and:
					(distance > self class distanceThreshold) and: (distance < nearestDistance)) ifTrue: [
						nearestIntersect := eachBlock.
						self newCenter: lineCollisionPoint - (self getOffsetVectorForOrigin: eachOrigin).
						self collisionPoint: lineCollisionPoint.
						nearestDistance := distance]]]].
	
	^ nearestIntersect