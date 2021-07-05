initialize-release
initialize

	super initialize.
	
	self 
		selectedMethods: OrderedCollection new;
		defaultMorphs: Dictionary new;
		actualDefaultMorph: Morph new;
		morphBox: Morph new;
		basicDependentMethods: OrderedCollection new;
		category: MEXCategory new;
		playground: (PasteUpMorph new
			layoutFrame: (LayoutFrame fractions: self class fullFractions);
			color: (self userInterfaceTheme color ifNil: [Color white]);
			dropEnabled: false;
			yourself)
			
	"self defaultMorphs add: #a -> 1"