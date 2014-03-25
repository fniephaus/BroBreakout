file handling
databaseFor: aSymbol allow: allowedExtensions
	"Return a fresh image or sound database"
	| database |
	database := Dictionary new.
	(self getFileNamesIn: (self folderNameFor: aSymbol)) do: [:fileName |
		(allowedExtensions includes: (FileDirectory extensionFor: fileName)) ifTrue: [
			database at: fileName put: (BroBreakout load: aSymbol for: fileName)]].
	
	^ database