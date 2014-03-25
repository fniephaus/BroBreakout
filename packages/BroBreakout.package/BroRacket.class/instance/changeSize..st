accessing
changeSize: aSymbol
	"aSymbol can only be #enlarge or #shrink"
	| offset |
	offset := 0
	.
	(aSymbol = #enlarge) ifTrue: [offset := self class offset].
	(aSymbol = #shrink) ifTrue: [offset := self class offset negated] .
	
	((self width + offset >= self class minimumWidth) and:
		(self width + offset <= self class maximumWidth)) ifTrue: [
			self
				width: self width + offset;
				setBackgroundImage: 'racket_', (self width) ,'.jpg'.

			(self center x > BroBreakout width) ifTrue: [
				self position: self position - (offset @ 0)]]