update statistics
updateBy: aSymbol
	| delta |
	delta := 0.
	
	(aSymbol = #incrementing) ifTrue: [delta := 1].
	(aSymbol = #decrementing) ifTrue: [delta := -1].

	self value: self value + delta.