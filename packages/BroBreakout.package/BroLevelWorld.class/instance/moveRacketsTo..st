level object handling
moveRacketsTo: xCoordinate
	self rackets do: [:aRacket | aRacket moveTo: xCoordinate].