initialization
initialize
	super initialize.
	self
		extent: BroBreakout dimension;
		layoutPolicy: ProportionalLayout new;
		initializeBackgroundImage;
		initializeMusic.