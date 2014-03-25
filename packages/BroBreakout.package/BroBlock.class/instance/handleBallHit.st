collision handling
handleBallHit
	BroBreakout playSound: 'ball_hit.wav'.

	self health: (self health - 1).

	self containsPowerup ifTrue: [
		self levelWorld spawnRandomPowerupAt: self position.
		self containsPowerup: false].

	(self health = 0) ifTrue: [self levelWorld removeLevelBlock: self].