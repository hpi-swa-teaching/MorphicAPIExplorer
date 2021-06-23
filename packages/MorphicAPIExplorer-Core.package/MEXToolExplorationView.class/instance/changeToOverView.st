ui
changeToOverView

	| newView |
	self myDependents do: [:aDependent | self removeDependent: aDependent].
	(self standardMorphs noneSatisfy: [:each | (each class = category defaultMorph class)])
		ifTrue: [self defaultMorphs removeKey: self category defaultMorph].
	newView := MEXToolOverView new.
	newView defaultMorphs: self defaultMorphs.
	self changeViewTo: (MEXToolBuilder open: newView)
