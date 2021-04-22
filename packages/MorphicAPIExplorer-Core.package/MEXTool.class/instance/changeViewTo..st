ui
changeViewTo: aWindow

	| currentBounds |
	currentBounds := MEXToolBuilder getBoundsForWindow: self containingWindow.
	"Close first because MVC fiddles around with processes."
	self closeOpenedWindow.
	"---- In MVC, the lines after this will not be executed ---"
	MEXToolBuilder setBoundsForWindow: aWindow to: currentBounds