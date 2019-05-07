building
buildDefaultMorphBoxWith: aBuilder

	^ aBuilder pluggablePanelSpec new
		model: self;
		children: #createDefaultMorphBox;
		frame: (LayoutFrame new
				leftFraction: 0;
				topFraction: 0.67;
				rightFraction: 0.33;
				bottomFraction: 1);
		yourself