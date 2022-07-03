ui
changeToOverView

	self removeDefaultButNotStandardMorphOf: category.
	
	self changeViewTo: (MEXToolBuilder open: overViewWindow)
