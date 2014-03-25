action
execute
	self levelWorld speed: #increase.
	self delay: [self levelWorld speed: #decrease] for: 5.