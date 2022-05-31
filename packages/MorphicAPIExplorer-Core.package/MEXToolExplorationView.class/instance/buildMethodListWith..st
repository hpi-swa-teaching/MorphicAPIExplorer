building
buildMethodListWith: aBuilder

	^ aBuilder pluggableMultiSelectionTreeSpec new
		model: self;
		roots: #methodList;
		nodeClass: MEXListItemWrapper;
		getSelectionList: #selectedMethods;
		setSelectionList: #setSelectionFor:with:;
		help: #getInformationText:;
		findRelated: #getDependeesOf:;
		findInhibited: #getInhibitorsOf:;
		setStateOfRelated: #setDependeeStateOf:;
		setStateOfInhibited: #setInhibitorStateOf:;
		frame: (LayoutFrame new
			leftFraction: self class leftSpecsHorizontalDistribution x;
			topFraction: self class backButtonFractionHeight y;
			rightFraction: self class leftSpecsHorizontalDistribution y;
			bottomFraction: self class saveButtonFractionHeight x;
			yourself);
		yourself