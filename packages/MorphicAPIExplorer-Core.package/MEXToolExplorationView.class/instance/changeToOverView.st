ui
changeToOverView

	| newView |
	(self standardMorphs noneSatisfy: [:each | (each class = category defaultMorph class)])
		ifTrue: [self defaultMorphs removeKey: self actualDefaultMorph].
	newView := MEXToolOverView new.
	newView defaultMorphs: self defaultMorphs.
	self changeViewTo: (MEXToolBuilder open: newView)
