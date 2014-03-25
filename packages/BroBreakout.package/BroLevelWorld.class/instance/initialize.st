initialization
initialize
	super initialize.
	self
		color: Color transparent;
		levelBlocks: OrderedCollection new;
		rackets: OrderedCollection new;
		disallowedBlocks: OrderedCollection new;
		balls: OrderedCollection new.