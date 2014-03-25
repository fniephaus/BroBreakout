initialization
initializeViews
	self views: (Dictionary new
		at: #welcome put: ((BroWelcomeView new) gameInstance: self);
		at: #menu put: ((BroMenuView new) gameInstance: self);
		at: #level put: ((BroLevelView new) gameInstance: self);
		yourself).

	self changeViewTo: #welcome.