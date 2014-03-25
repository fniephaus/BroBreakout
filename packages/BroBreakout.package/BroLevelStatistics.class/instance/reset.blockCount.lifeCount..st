statistics update
reset: currentLevelID blockCount: aBlockCount lifeCount: aLifeCount
	self
		refresh: #level with: currentLevelID;
		refresh: #blocks with: aBlockCount;
		refresh: #score with: 0;
		startTime: Time totalSeconds;
		refresh: #lifes with: aLifeCount;
		startStepping.