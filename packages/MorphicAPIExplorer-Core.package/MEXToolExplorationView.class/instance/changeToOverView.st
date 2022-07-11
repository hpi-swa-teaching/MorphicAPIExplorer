ui
changeToOverView

	MEXToolBuilder setBoundsForWindow: overViewWindow to: 
		(MEXToolBuilder getBoundsForWindow: self containingWindow).	
	self removeDefaultButNotStandardMorphOf: category.
	self closeOpenedWindow.
	overViewWindow show.
