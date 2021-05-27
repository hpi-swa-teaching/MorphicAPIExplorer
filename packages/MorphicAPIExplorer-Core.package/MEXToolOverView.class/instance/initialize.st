initialize-release
initialize

	super initialize.
	self categories: self class categories.
	self defaultMorphs: Dictionary new.
	self standardMorphs do: 
		[:each | defaultMorphs add: each -> OrderedCollection new.].
	