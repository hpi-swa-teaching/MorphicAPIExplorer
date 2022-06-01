accessing
relatedMorphs: anOrderedCollection
	"relatedMorphs need to be reloaded in order to be displayed correctly"
	
	relatedMorphs := anOrderedCollection.
	self reloadNodeMorphs 