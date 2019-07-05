initialize-release
initialize

	super initialize.
	
	self selectedMethods: OrderedCollection new.
	self playground: (PasteUpMorph new
		layoutFrame: (LayoutFrame fractions: (0@0 rect: 1@1));
		color: Preferences defaultWorldColor;
		yourself).
	
	