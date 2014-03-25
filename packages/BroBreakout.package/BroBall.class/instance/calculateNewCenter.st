collision handling
calculateNewCenter
	| nearestIntersect distanceToIntersect |

	nearestIntersect := self getNearestIntersect.
	nearestIntersect ifNil: [^ self tempCenter + self distanceVectorToTravel].
	
	nearestIntersect hitAllowed ifFalse: [
		self levelWorld removeBall: self.
		^ 0 @ 0].
	
	distanceToIntersect := self newCenter - self tempCenter.
	
	self
		distanceVectorToTravel: self distanceVectorToTravel - distanceToIntersect;
		tempCenter: self newCenter;
		adjustDirectionWhenHitting: nearestIntersect at: self collisionPoint.

	nearestIntersect handleBallHit.

	^ self calculateNewCenter