level object handling
moveRackets: aSymbol
	"aSymbol can be #left or #right"
	self rackets do: [:aRacket | aRacket move: aSymbol].