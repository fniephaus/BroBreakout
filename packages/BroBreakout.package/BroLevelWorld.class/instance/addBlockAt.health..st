level object handling
addBlockAt: aPosition health: anInteger
	| block |

	block := BroBlock new
		position: (self position) + aPosition;
		health: anInteger;
		yourself.

	"Add powerup if block is removable"
	(anInteger > 0) ifTrue: [
		block containsPowerup: (4 atRandom = 1)].
		
	self addLevelBlock: block.