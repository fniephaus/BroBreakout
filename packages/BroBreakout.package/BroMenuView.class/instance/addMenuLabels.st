drawing
addMenuLabels
	| levelCount padding horizontalOffset verticalOffset |
	
	levelCount := BroBreakout levelCount.
	padding := BroMenuLabel labelSize.
	horizontalOffset := (padding + self class labelHorizontalSpacing).
	verticalOffset := (padding + self class labelVerticalSpacing).
	
	levelCount timesRepeat: [
		| xCoordinate yCoordinate |
		xCoordinate := (padding + ((levelCount - 1) * horizontalOffset)) \\ (horizontalOffset * self class labelPerRow).
		yCoordinate := padding + ((((levelCount - 1) / (self class labelPerRow)) truncated) * verticalOffset).
		self addMenuLabelAt: xCoordinate @ yCoordinate level: levelCount.
		levelCount := levelCount - 1].