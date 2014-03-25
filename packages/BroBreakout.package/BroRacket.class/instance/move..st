moving
move: aSymbol
	(aSymbol = #left) ifTrue: [self moveTo: self center x - self stepSize].
	(aSymbol = #right) ifTrue: [self moveTo: self center x + self stepSize].
	