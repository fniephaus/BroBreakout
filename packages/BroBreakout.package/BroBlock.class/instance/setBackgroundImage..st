user interface
setBackgroundImage: aFilename
	self backgroundMorph ifNotNil: [
		self backgroundMorph image: (BroBreakout get: #image for: aFilename)]