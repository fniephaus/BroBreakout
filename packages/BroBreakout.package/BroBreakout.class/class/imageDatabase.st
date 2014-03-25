accessing
imageDatabase
	^ ImageDatabase ifNil: [ ImageDatabase := (self databaseFor: #image allow: #('jpg' 'png'))]