collision handling
collidesWithAnyElementOf: aCollection
	^ aCollection anySatisfy: [:aElement |
		self intersects: aElement bounds]