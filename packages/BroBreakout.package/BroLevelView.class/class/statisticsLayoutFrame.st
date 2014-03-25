constants
statisticsLayoutFrame
	^ (LayoutFrame
 			fractions: (0 @ 1 corner: 1 @ 1)
 			offsets: (0 @ (self statisticsHeight) negated corner: 0 @ 0))