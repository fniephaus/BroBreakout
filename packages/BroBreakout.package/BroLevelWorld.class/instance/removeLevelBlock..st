level object handling
removeLevelBlock: aLevelBlock
	self removeMorph: aLevelBlock.
	self levelBlocks remove: aLevelBlock.
	self
		explode: aLevelBlock color: #red;
		checkGameWin.
		
	self levelStatistics
		update: #blocks by: #decrementing;
		update: #score by: #incrementing.