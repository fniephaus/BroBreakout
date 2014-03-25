initialization
initialize
	super initialize.
	self
		extent: (self class diameter) @ (self class diameter);
		directionVector: 0 @ (10 * (#(-1 1) atRandom));
		color: Color transparent;
		borderColor: Color transparent;
		initializeBackgroundImage.