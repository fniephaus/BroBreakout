accessing
center: aCenter
	"receive center and set new position"
	self position: aCenter - ((self height / 2) @ (self width / 2)). 