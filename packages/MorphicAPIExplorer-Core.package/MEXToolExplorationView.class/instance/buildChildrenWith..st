building
buildChildrenWith: aBuilder

	^ {
		self buildMethodListWith: aBuilder.
		self buildBackToOverViewButtonWith: aBuilder.
		self buildDefaultMorphBoxWith: aBuilder.
		self buildMorphPlaygroundPanelWith: aBuilder.
		self buildCodeEditorWith: aBuilder.
	}