game logic
checkGameWin
	"Game is won if there are no blocks left with health greater than 0"
	((self levelBlocks select: [:each | each health > 0]) isEmpty) ifTrue: [
		self handleGameWin]