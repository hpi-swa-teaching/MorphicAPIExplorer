initialize-release
initialize

	super initialize.
	
	self categories: self class categories.
	self defaultMorphs: Dictionary new.
	self defaultMorphs add: CircleMorph new -> OrderedCollection new.
	self defaultMorphs add: TextMorph new -> OrderedCollection new.
	self defaultMorphs add: SketchMorph new -> OrderedCollection new.
	self defaultMorphs add: PolygonMorph new -> OrderedCollection new.