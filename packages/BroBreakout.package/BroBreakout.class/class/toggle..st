accessing
toggle: aSymbol
	"aSymbol can be #playSoundEffects or #playMusic"
	(self configurations at: aSymbol put: ((self configuration: aSymbol) not)).