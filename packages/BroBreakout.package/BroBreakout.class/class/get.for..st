file handling
get: aSymbol for: aFilename
	"Returns item from apropriate dictionary"
	(aSymbol = #image) ifTrue: [^ self imageDatabase at: aFilename].
	(aSymbol = #sound) ifTrue: [^ self soundDatabase at: aFilename].