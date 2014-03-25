initialization
initialize
	super initialize.
	self
		beAllFont: ((TextStyle default fontOfSize: 16) emphasized: 1);
		color: Color white;
		borderWidth: 4;
		borderColor: Color transparent;
		hResizing: #spaceFill;
		description: '';
		value: 0;
		margins: 30 @ 0.