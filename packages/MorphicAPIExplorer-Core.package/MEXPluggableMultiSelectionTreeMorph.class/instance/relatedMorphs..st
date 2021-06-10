accessing
relatedMorphs: anOrderedCollection
	"relatedMorphs need to be reloaded in order to be displayed correctly"

	self reloadMorphs: relatedMorphs isIndicated: false. 
	relatedMorphs := anOrderedCollection.
	self reloadMorphs: relatedMorphs isIndicated: false