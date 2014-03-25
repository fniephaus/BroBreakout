initialization
initialize
	super initialize.
	self
		stepSize: self class defaultStepSize;
		extent: (self class defaultWidth) @ (self class height).