initialization
initialize
	super initialize.
	self
		direction: 0 @ (-5);
		color: Color transparent;
		borderColor: Color transparent;
		initializeBackgroundImage;
		extent: ((self class radius) * 2) @ ((self class radius) * 2).
	