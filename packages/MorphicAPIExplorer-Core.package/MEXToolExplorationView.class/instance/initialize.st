initialize-release
initialize

	super initialize.
	
	self 
		selectedMethods: OrderedCollection new;
		defaultMorphs: Dictionary new;
		morphBox: Morph new;
		basicDependentMethods: OrderedCollection new;
		category: MEXCategory new;
		playground: ((MEXMorphViewer newWithView: self)
			layoutFrame: (LayoutFrame fractions: self class fullFractions);
			yourself)