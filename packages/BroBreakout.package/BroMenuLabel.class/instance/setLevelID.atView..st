initialization
setLevelID: aLevelID atView: menuView
	self
		levelID: aLevelID;
		label: self levelID asString;
		target: menuView;
		arguments: {self levelID};
		actionSelector: #handleLevelClick:. 