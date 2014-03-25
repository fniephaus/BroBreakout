event handling
step
	"Use stepping to control racket"
	({$a. $d. Character arrowLeft. Character arrowRight.} includes: self lastKey) ifTrue: [
		self handleRacketKey: self lastKey.]