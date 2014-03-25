initialization
initializeMusic
	self musicName ifNotNil: [
		self music: (RepeatingSound repeatForever: (BroBreakout loadMusic: self musicName))]