statistics update
update: anItem by: aSymbol
	"aSymbol can be #incrementing or #decrementing"
	(self items at: anItem) updateBy: aSymbol.