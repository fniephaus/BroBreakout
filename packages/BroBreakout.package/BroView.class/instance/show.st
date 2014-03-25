accessing
show
	super show.
	(BroBreakout configuration: #playMusic) ifTrue: [
		self playMusic].