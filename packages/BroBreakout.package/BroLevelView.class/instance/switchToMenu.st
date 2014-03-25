event handling
switchToMenu
	"Remove and reset overlay if necessary, clear levelWorld and switch to BroMenuView"
	
	self overlay ifNotNil: [
		self
			removeMorph: self overlay;
			overlay: nil].
		
	self levelWorld clearWorld.
	self gameInstance showMenu.