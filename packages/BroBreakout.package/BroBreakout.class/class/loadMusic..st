sounds
loadMusic: aFilename
	^ self load: #sound for: 'music', FileDirectory pathNameDelimiter asString, aFilename 