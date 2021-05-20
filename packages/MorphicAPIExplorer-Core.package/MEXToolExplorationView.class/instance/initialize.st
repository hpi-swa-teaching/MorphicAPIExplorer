initialize-release
initialize

	super initialize.
	
	self 
		selectedMethods: OrderedCollection new;
		defaultMorphs: Dictionary new;
		actualDefaultMorph: Morph new;
		category: MEXCategory new;
		playground: (PasteUpMorph new
			layoutFrame: (LayoutFrame fractions: self class fullFractions);
			color: Preferences defaultWorldColor;
			dropEnabled: false;
			yourself).
			
	self defaultMorphs add: #a -> 1.