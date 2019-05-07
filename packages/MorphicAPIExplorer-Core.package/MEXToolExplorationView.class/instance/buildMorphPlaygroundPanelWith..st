building
buildMorphPlaygroundPanelWith: aBuilder

	^ aBuilder pluggablePanelSpec new
		model: self;
		children: #createMorphPlayground;
		frame: (LayoutFrame new
				leftFraction: 0.33;
				topFraction: 0;
				rightFraction: 1;
				bottomFraction: 0.67);
		yourself