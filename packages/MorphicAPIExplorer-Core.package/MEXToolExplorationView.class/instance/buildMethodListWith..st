building
buildMethodListWith: aBuilder

	^ aBuilder pluggableMultiSelectionTreeSpec new
		model: self;
		roots: #methodList;
		nodeClass: MEXMethodListItemWrapper;
		getSelectionList: #getSelectionFor:;
		setSelectionList: #setSelectionFor:with:;
		hoverAction: #setDependentsActive:;
		unhoverAction: #setDependentsInactive:;
		getRelated: #getDependentsOf:;
		frame: (LayoutFrame new
			leftFraction: self class leftSpecsHorizontalDistribution x;
			topFraction: self class backButtonFractionHeight y;
			rightFraction: self class leftSpecsHorizontalDistribution y;
			bottomFraction: self class topSpecsVerticalDistribution y);
		yourself