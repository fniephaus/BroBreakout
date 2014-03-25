collision handling
adjustDirectionWhenHitting: aBlock at: aPoint
	self
		distanceVectorToTravel: (aBlock reflectedDirectionOf: (self distanceVectorToTravel) at: aPoint);
		direction: (aBlock reflectedDirectionOf: (self direction) at: aPoint).