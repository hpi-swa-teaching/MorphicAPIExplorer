ui
changeToOverView

	| newView |
	newView := MEXToolOverView new.
	newView defaultMorphs: self defaultMorphs.
	self changeViewTo: (MEXToolBuilder open: newView)
