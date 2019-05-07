building
buildMethodListWith: aBuilder

	^ aBuilder pluggableListSpec new
		model: self;
		list: #methodList;
		frame: (LayoutFrame new
				leftFraction: 0;
				topFraction: 0;
				rightFraction: 0.33;
				bottomFraction: 0.67);
		yourself