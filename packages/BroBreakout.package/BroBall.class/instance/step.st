collision handling
step
	self
		tempCenter: self center;
		"Adjustment of speed is done in every step due to rounding issues."
		adjustDirectionToSpeed: self levelWorld ballSpeed;
		distanceVectorToTravel: self direction;
		center: self calculateNewCenter.