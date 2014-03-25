initialization
hideAllViews
	self views do: [:each | self addMorph: each. each hide].