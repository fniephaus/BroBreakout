file handling
getFileNamesIn: aSubFolderName
	^ ((FileDirectory default directoryNamed: (self folderNameFor: #root)) directoryNamed: aSubFolderName) fileNames