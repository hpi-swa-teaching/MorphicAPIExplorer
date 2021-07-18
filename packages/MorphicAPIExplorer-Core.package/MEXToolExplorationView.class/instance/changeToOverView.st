ui
changeToOverView

	| newView |
	self removeDefaultButNotStandardMorphOf: category.
	newView := MEXToolOverView new.
	newView savedMorphs: self savedMorphs.
	self changeViewTo: (MEXToolBuilder open: newView)
