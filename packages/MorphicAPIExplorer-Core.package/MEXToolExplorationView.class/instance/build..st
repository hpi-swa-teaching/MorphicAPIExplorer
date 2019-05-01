building
build: aBuilder

	^ {
		self buildMethodListWith: aBuilder.
		self buildDefaultMorphBoxWith: aBuilder.
		self buildMorphPlaygroundPanelWith: aBuilder.
		self buildCodeEditorWith: aBuilder.
		self buildCopyToClipboardButtonWith: aBuilder.
		self buildRunCodeButtonWith: aBuilder.
	}