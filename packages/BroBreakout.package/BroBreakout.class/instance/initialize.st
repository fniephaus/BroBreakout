initialization
initialize
	super initialize.
	
	self
		minimumExtent: self class dimension; 
		extent: self class dimension;
		layoutPolicy: ProportionalLayout new;
		initializeViews.
