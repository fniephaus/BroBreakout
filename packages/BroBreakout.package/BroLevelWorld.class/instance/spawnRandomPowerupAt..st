powerup handling
spawnRandomPowerupAt: aPosition
	| aPowerup |

	BroBreakout playSound: 'powerup_spawn.wav'.
	
	"Create random powerup by randomly choosing a subclass"
	aPowerup := BroPowerup subclasses atRandom new.
	aPowerup
		levelWorld: self;
		position: aPosition.
	self addMorph: aPowerup.