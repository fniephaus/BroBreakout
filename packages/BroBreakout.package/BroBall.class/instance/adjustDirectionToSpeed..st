collision handling
adjustDirectionToSpeed: aVectorLength
	self direction: (self direction normalized * aVectorLength).