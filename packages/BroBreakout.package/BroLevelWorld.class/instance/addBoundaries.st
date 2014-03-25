level object handling
addBoundaries
	#(#top #right #bottom #left) do: [:each |
		self addLevelBlock: ((BroBoundary new) placeInLevelWorld: self at: each)].