initialize-release
initialize

	super initialize.
	
	self categories: self class categories.
	self defaultMorphs: Dictionary new