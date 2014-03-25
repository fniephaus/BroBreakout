accessing
delete
	"Also unset ImageDatabase and SoundDatabase when BroBreakout is deleted"
	self class
		imageDatabase: nil;
		soundDatabase: nil.
	super delete.