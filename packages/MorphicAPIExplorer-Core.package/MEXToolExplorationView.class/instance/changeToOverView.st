ui
changeToOverView

	| newView |
	self defaultMorphs removeKey: self defaultMorph.
	newView := MEXToolOverView new.
	newView defaultMorphs: self defaultMorphs.
	self changeViewTo: (MEXToolBuilder open: newView)
