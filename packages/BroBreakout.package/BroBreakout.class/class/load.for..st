file handling
load: aSymbol for: aFilename
	(aSymbol = #image)
		ifTrue: [^ Form fromFileNamed: (self getFolderFor: aSymbol), aFilename].
	(aSymbol = #sound)
		ifTrue:[^ SampledSound fromWaveFileNamed: (self getFolderFor: aSymbol), aFilename].