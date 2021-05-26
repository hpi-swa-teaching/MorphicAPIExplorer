building
buildChildrenWith: aBuilder

	^ {self buildMethodListWith: aBuilder.
		self buildBackToOverViewButtonWith: aBuilder.
		self buildSaveDefaultMorphButtonWith: aBuilder.
		self buildDefaultMorphBoxWith: aBuilder.
		self buildMorphPlaygroundPanelWith: aBuilder.
		self buildCodeEditorWith: aBuilder}