updating
updateGetRelatedSelector

	| methodsAsStrings |	
	
	self relatedMorphs do: [:m | m changed].	
	methodsAsStrings := (model perform: self getRelatedSelector with: hoveredMorph) ifNil: [OrderedCollection new].
	self relatedMorphs: (self items select: [:item | methodsAsStrings includes: (item complexContents asString)]).
	self relatedMorphs do: [:m | m changed].
	"Transcript show: relatedMorphs."