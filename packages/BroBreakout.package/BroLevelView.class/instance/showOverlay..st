accessing
showOverlay: type
	"Type can be #win or #lose"
	self overlay: (BroBreakout newImageMorphFor: type, '.png').
	self overlay position: self position.
	
	self addMorph: self overlay.	
