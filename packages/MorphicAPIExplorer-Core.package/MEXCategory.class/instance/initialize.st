initialize-release
initialize

	super initialize.
	
	self
		name: self class defaultName;
		image: ImageMorph new;
		methodList: OrderedCollection new;
		defaultMorph: Morph new