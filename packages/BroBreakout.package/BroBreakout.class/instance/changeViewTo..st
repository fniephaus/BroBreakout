accessing
changeViewTo: aSymbol
	"aSymbol can be #welcome, #menu or #level"
	| aView |
	aView := (self views at: aSymbol).
	self hideAllViews.
	aView show.
	ActiveHand newKeyboardFocus: aView.