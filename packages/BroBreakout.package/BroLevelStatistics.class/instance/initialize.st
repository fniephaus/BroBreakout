initialization
initialize
	super initialize.
	self
		color: Color transparent;
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		startTime: Time totalSeconds;
		items: Dictionary new.
	
	#(#blocks #score #time #level #lifes) do: [:each |
		self items at: each put: (self createStatisticItem: each)].