level object handling
explode: aMorph color: aColorSymbol
	"aColorSymbol can be #red or #blue since the explosion is done with a sprite. Real color objects aren't supported."
	| anExplosion |
	
	anExplosion := BroExplosion new.
	anExplosion
		position: aMorph center - (anExplosion extent / 2);
		imageMorph: (BroBreakout newImageMorphFor: 'explosion_', aColorSymbol asString, '.png');
		addMorph: anExplosion imageMorph.
	
	self addMorph: anExplosion.