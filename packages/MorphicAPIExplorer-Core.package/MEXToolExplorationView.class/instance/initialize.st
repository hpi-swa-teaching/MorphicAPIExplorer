initialize-release
initialize

	super initialize.
	
	self 
		selectedMethods: OrderedCollection new;
		defaultMorphs: Dictionary new;
		actualDefaultMorph: Morph new;
		basicDependentMethods: OrderedCollection new;
		category: MEXCategory new;
		playground: (PasteUpMorph new
			layoutFrame: (LayoutFrame fractions: self class fullFractions);
			color: Preferences defaultWorldColor;
			dropEnabled: false;
			yourself)