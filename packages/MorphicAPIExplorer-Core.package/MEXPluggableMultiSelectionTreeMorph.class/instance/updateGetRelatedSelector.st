updating
updateGetRelatedSelector

	| methodsAsStrings |	
	
	self relatedMorphs do: [:m | m complexContents item isActiveDependee: false. m refresh. m setProperty: #wasRefreshed toValue: false. m changed].	
	methodsAsStrings := (model perform: self getRelatedSelector with: hoveredMorph) ifNil: [OrderedCollection new].
	self relatedMorphs: (self items select: [:item | methodsAsStrings includes: (item complexContents asString)]).
	self relatedMorphs do: [:m | m complexContents item isActiveDependee: true. m refresh. m setProperty: #wasRefreshed toValue: true. m changed]