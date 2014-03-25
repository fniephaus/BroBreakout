initialization
positionAt: aRacket
	| offsetToRacketEdge |
	self center: aRacket center.
		
	offsetToRacketEdge := (0 @ aRacket height / 2) + (0 @ self class radius).

	(aRacket isTopRacket) ifTrue: [
		self center: self center + offsetToRacketEdge.
		self flipDirection]
	ifFalse: [
		self center: self center - offsetToRacketEdge].
