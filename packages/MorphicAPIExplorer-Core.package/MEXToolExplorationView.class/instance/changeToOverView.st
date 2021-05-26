ui
changeToOverView

	| newView |
	self defaultMorphs removeKey: self actualDefaultMorph.
	newView := MEXToolOverView new.
	newView defaultMorphs: self defaultMorphs.
	self changeViewTo: (MEXToolBuilder open: newView)
