initialization
initializeBackgroundImage
	self imageName ifNotNil: [
		"Subclass BroBoundary returns nil for self imageImage since it is invisible in the LevelWorld"
		self backgroundMorph: (BroBreakout newImageMorphFor: self imageName).
		self addMorph: self backgroundMorph]