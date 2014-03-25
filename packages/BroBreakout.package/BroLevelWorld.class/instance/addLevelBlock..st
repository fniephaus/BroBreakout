level object handling
addLevelBlock: aLevelBlock
	aLevelBlock levelWorld: self.
	self levelBlocks add: aLevelBlock.
	
	aLevelBlock hitAllowed ifFalse: [self disallowedBlocks add: aLevelBlock].
	
	self addMorph: aLevelBlock.