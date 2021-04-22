initialize-release
initialize

	super initialize.
	
	self
		name: self class defaultName;
		image: MEXScalableImageMorph new;
		methodList: OrderedCollection new;
		defaultMorph: Morph new