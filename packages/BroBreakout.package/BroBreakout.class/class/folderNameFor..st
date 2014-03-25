constants
folderNameFor: aSymbol
	(aSymbol = #root) ifTrue: [^ 'brobreakout'].
	(aSymbol = #image) ifTrue: [^ 'images'].
	(aSymbol = #level) ifTrue: [^ 'levels'].
	(aSymbol = #sound) ifTrue: [^ 'sounds'].
	