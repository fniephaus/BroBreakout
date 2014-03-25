event handling
handleRacketKey: aCharacter
	(aCharacter = $a or: aCharacter = Character arrowLeft) ifTrue: [
		self levelWorld moveRackets: #left].

	(aCharacter = $d or: aCharacter = Character arrowRight) ifTrue: [
		self levelWorld moveRackets: #right].