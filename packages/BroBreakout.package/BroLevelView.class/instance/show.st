accessing
show
	super show.
	self
		overlay: nil;
		lastKey: nil.
	
	BroBreakout playSound: 'level_start.wav'.
	self levelWorld ballSpeed: self class defaultBallSpeed.
	self levelBuilder buildLevel: self currentLevelID.
	
	self levelStatistics
		reset: self currentLevelID
		blockCount: ((self levelWorld levelBlocks select: [:aBlock | aBlock health > 0]) size)
		lifeCount: self levelWorld balls size.
