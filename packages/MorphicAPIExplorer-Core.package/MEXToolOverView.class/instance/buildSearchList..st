building
buildSearchList: aBuilder

	"we only increase maximumSearchDepth to prevent conflicts with other applications"
	PluggableTreeMorph maximumSearchDepth: {self class requiredSearchDepthForTree . PluggableTreeMorph maximumSearchDepth} max.
	^ aBuilder pluggableTreeSpec new
		model: self;
		roots: #categories;
		nodeClass: MEXListItemWrapper;
		setSelected: #changeToCategoryOf:;
		keyPress: #searchListKeyPress:;
		label: #name;
		frame: (LayoutFrame new
			leftFraction: 0;
			topFraction: self class searchButtonFractionHeight;
			rightFraction: 1;
			bottomFraction: 1;
			yourself);
		yourself