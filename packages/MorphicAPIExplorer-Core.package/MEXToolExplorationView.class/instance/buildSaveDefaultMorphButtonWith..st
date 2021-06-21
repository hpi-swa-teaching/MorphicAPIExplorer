building
buildSaveDefaultMorphButtonWith: aBuilder
	
	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Save Morph';
		action: #saveCurrentMorph;
		frame: (LayoutFrame new
			leftFraction: self class leftSpecsHorizontalDistribution x;
			topFraction: self class saveButtonFractionHeight x;
			rightFraction: self class leftSpecsHorizontalDistribution y;
			bottomFraction: self class saveButtonFractionHeight y;
			yourself);
		yourself