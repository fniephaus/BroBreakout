level object handling
removeBall: aBall
	self removeMorph: aBall.
	self balls remove: aBall.
	self levelStatistics update: #lifes by: #decrementing.
	self
		explode: aBall color: #blue;
		checkGameOver.
