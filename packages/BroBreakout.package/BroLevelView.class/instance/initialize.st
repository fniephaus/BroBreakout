initialization
initialize
	super initialize.
	self
		initializeLevelStatistics;
		initializeLevelWorld;
		levelBuilder: ((BroLevelBuilder new) levelWorld: self levelWorld).
	
