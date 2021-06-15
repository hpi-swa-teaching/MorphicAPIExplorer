initialize-release
initialize

	super initialize.
	self categories: self class categories.
	self categories do: [:each | 
		each methodList do: [:method | 
			method category: each. 
			method subMethods do: [:sub | 
				sub category: each]]].
	self defaultMorphs: Dictionary new.
	self standardMorphs do: 
		[:each | defaultMorphs add: each -> OrderedCollection new]
	