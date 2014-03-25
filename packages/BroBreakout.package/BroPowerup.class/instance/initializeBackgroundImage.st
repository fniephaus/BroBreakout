user interface
initializeBackgroundImage
	self backgroundMorph: (BroBreakout newImageMorphFor: self imageName).
	self addMorph: self backgroundMorph.