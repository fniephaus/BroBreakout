animation
step
	(currentSpriteIndex = 16) ifTrue: [
		self delete]
	ifFalse: [
		self imageMorph position: self imageMorph position - (self class diameter @ 0).
		self currentSpriteIndex: self currentSpriteIndex + 1].
