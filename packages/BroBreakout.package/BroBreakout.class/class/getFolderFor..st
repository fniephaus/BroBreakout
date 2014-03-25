file handling
getFolderFor: aSymbol
	^ (self folderNameFor: #root),
		FileDirectory pathNameDelimiter asString,
		(self folderNameFor: aSymbol),
		FileDirectory pathNameDelimiter asString