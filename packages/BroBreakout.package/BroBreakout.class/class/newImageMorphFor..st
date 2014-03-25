user interface
newImageMorphFor: aFilename
	^ (ImageMorph new) image: (self get: #image for: aFilename)