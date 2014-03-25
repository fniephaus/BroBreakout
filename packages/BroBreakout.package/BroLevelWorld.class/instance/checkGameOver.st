game logic
checkGameOver
	"Game is over if there are no balls left"
	(self balls isEmpty) ifTrue: [self handleGameOver]