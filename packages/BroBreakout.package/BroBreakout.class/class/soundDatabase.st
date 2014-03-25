accessing
soundDatabase
	^ SoundDatabase ifNil: [SoundDatabase := (self databaseFor: #sound allow: #('wav'))]