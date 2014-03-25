accessing
placeInLevelWorld: aLevelWorld at: aSymbol
	| newWidth newHeight newPosition origin corner |
	self levelWorld: aLevelWorld. 
	
	newWidth := self levelWorld width.
	newHeight := self levelWorld height.
	newPosition := self levelWorld position.
	
	origin := newPosition.
	corner := 0 @ 0.
	
	self hitAllowed: false.	

	aSymbol = #top ifTrue: [
		corner := newPosition + (newWidth @ self class boundaryWidth)].
	
	aSymbol = #bottom ifTrue: [
		origin := newPosition + (0 @ newHeight).
		corner := newPosition + (newWidth @ (newHeight + self class boundaryWidth))].
	
	aSymbol = #right ifTrue: [
		origin := newPosition + ((newWidth - self class boundaryWidth) @ 0).
		corner := newPosition + (newWidth @ newHeight).
		self hitAllowed: true].
	
	aSymbol = #left ifTrue: [
		corner := newPosition + (self class boundaryWidth @ newHeight).
		self hitAllowed: true].
	
	self bounds: (Rectangle origin: origin corner: corner).