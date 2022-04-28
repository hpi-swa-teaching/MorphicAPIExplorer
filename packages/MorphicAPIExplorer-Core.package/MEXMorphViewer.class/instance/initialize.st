initialize-release
initialize

	super initialize.

	self
		currentMorph: Morph new;
		color: Preferences defaultWorldColor;
		dropEnabled: true