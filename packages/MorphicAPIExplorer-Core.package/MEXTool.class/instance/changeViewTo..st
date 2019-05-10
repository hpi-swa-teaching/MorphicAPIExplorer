ui
changeViewTo: aWindow

	|currentBounds |
	currentBounds := ToolBuilder findDefault getBoundsForWindow: self containingWindow.
	"Close first because MVC fiddles around with processes."
	self closeOpenedWindow.
	"---- In MVC, the lines after this will not be executed ---"
	ToolBuilder findDefault setBoundsForWindow: aWindow to: currentBounds