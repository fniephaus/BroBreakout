game logic
handleGameWin
	self levelView stopMusic.
	BroBreakout playSound: 'win.wav'.
	self balls do: [:aBall | aBall stopStepping].
	self rackets removeAll.	
	self levelStatistics stopStepping.	
	self levelView showOverlay: #win.
