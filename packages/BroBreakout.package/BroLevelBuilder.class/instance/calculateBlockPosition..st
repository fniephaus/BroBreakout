building
calculateBlockPosition: anInteger
	"Place block at right position and look health value up in dslItems"
	| x y |
	x := self class blockLeftSpacing + (((anInteger - 1) * (BroBlock width)) \\ ((BroBlock width) * self class blocksPerRow)).
	y := self class blockTopSpacing + ((((anInteger - 1) / (self class blocksPerRow)) truncated) * (BroBlock height)).
	
	^ x @ y