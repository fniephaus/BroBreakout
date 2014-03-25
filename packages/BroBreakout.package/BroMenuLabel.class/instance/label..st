initialization
label: aString
	"Overwrite original label function to be able to set font color to white"
	| oldLabel m |
	(oldLabel := self findA: StringMorph)
		ifNotNil: [oldLabel delete].
	m := StringMorph contents: aString.
	self extent: m extent + (borderWidth + 6).
	m
		font: ((TextStyle default fontOfSize: 40) emphasized: 1);
		color: Color white;
		position: self center - (m extent // 2).
	self addMorph: m.
	m lock