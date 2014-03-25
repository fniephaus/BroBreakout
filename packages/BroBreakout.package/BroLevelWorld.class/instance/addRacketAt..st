level object handling
addRacketAt: aPosition
	| racket |

	racket := BroRacket new
		position: aPosition + self position;
		color: Color red;
		health: -1;
		yourself.
	
	self rackets add: racket.
	self addLevelBlock: racket.