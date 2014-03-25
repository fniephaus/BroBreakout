collision handling
getLineOrigins: aPoint
	| origins |
	origins := Dictionary new.

	#(#right #top #left) do: [:each |
		origins at: each put: (aPoint + (self getOffsetVectorForOrigin: each))].
		
	^ origins