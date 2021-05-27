ui
changeToOverView

	| newView flag |
	flag := 0.
	self standardMorphs do: [:each |
		(each class = category defaultMorph class) ifTrue: [flag := 1].].
	(flag = 0) ifTrue: [self defaultMorphs removeKey: self actualDefaultMorph.].
	
	newView := MEXToolOverView new.
	newView defaultMorphs: self defaultMorphs.
	self changeViewTo: (MEXToolBuilder open: newView)
