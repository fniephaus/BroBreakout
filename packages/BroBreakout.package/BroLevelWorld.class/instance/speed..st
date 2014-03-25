powerup handling
speed: aSymbol
	"Increase/decrease speed of balls by using #increase or #decrease as aSymbol"
	| newBallSpeed racketFactor |
	
	racketFactor := 1.
	newBallSpeed := self ballSpeed.
	
	(aSymbol = #decrease) ifTrue: [
		newBallSpeed := self ballSpeed - 2.
		racketFactor := 1 / 1.1].
	
	(aSymbol = #increase) ifTrue: [
		newBallSpeed := self ballSpeed + 2.
		racketFactor := 1.1].
	
	self ballSpeed: (newBallSpeed max: BroBall minimumSpeed).
	self rackets do: [:each | each stepSize: each stepSize * racketFactor]