action
execute
	self levelWorld speed: #decrease.
	self delay: [self levelWorld speed: #increase] for: 5.