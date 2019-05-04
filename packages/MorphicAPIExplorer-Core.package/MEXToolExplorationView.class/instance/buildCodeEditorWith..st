building
buildCodeEditorWith: aBuilder

	^ (MEXCodeEditor new buildCodePaneWith: aBuilder)
		frame: (LayoutFrame new
				leftFraction: 0.33;
				topFraction: 0.67;
				rightFraction: 1;
				bottomFraction: 1);
		yourself