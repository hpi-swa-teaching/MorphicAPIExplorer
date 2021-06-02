updating
updateGetRelatedSelector
		
	self relatedMorphs do: [:m | m complexContents deactivate. m refresh. m changed].	
	self relatedMorphs: ((model perform: self getRelatedSelector with: hoveredMorph) ifNil: [OrderedCollection new]).
	self relatedMorphs do: [:m | m complexContents activate. m refresh. m changed].
	"Transcript show: relatedMorphs."