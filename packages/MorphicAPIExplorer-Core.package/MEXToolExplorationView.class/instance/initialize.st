initialize-release
initialize

	super initialize.
	
	self 
		selectedMethods: OrderedCollection new;
		savedMorphs: Dictionary new;
		morphBox: Morph new;
		category: MEXCategory new;
		playground: ((MEXMorphViewer newWithView: self)
			layoutFrame: (LayoutFrame fractions: self class fullFractions);
			color: Preferences defaultWorldColor;
			yourself)