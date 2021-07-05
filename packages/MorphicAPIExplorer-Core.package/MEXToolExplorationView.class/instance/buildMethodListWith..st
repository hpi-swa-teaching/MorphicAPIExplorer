building
buildMethodListWith: aBuilder

	^ aBuilder pluggableMultiSelectionTreeSpec new
		model: self;
		roots: #methodList;
		nodeClass: MEXListItemWrapper;
		getSelectionList: #selectedMethods;
		setSelectionList: #setSelectionFor:with:;
		findRelated: #getDependeesOf:;
		setStateOfRelated: #setDependeeStateOf:;
		frame: (LayoutFrame new
			leftFraction: self class leftSpecsHorizontalDistribution x;
			topFraction: self class backButtonFractionHeight y;
			rightFraction: self class leftSpecsHorizontalDistribution y;
			bottomFraction: self class saveButtonFractionHeight x;
			yourself);
		yourself