initialization
initializeLevelStatistics
	self levelStatistics: (BroLevelStatistics new).
	self addMorph: self levelStatistics fullFrame: self class statisticsLayoutFrame.