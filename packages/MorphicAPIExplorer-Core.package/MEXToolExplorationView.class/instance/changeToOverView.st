ui
changeToOverView

	| newView |
	(self standardMorphs noneSatisfy: [:aMorph | (aMorph class = category defaultMorph class)])
		ifTrue: [self defaultMorphs removeKey: self category defaultMorph].
	newView := MEXToolOverView new.
	newView defaultMorphs: self defaultMorphs.
	self changeViewTo: (MEXToolBuilder open: newView)
