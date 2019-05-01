building
buildCodeEditorWith: aBuilder

	^ (MEXCodeEditor new buildCodePaneWith: aBuilder)
		frame: (LayoutFrame new
				leftFraction: 0.33 offset: 0;
				topFraction: 0.67 offset: 0;
				rightFraction: 1 offset: 0;
				bottomFraction: 1 offset: 0);
		yourself