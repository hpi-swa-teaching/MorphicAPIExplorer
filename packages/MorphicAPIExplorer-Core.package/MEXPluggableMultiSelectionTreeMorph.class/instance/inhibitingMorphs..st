accessing
inhibitingMorphs: anOrderedCollection
	"inhibitedMorphs need to be reloaded in order to be displayed correctly"
	
	inhibitingMorphs := anOrderedCollection.
	self reloadNodeMorphs