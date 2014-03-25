game logic
handleGameOver
	self levelView stopMusic.
	BroBreakout playSound: 'lose.wav'.
	self rackets removeAll.
	self levelStatistics stopStepping.
	self levelView showOverlay: #lose.
	