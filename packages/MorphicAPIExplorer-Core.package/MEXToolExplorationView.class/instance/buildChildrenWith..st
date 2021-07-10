building
buildChildrenWith: aBuilder

	^ {self buildMethodListWith: aBuilder.
		self buildBackToOverViewButtonWith: aBuilder.
		self buildSaveMorphButtonWith: aBuilder.
		self buildMorphBoxWith: aBuilder.
		self buildMorphPlaygroundPanelWith: aBuilder.
		self buildCodeEditorWith: aBuilder}