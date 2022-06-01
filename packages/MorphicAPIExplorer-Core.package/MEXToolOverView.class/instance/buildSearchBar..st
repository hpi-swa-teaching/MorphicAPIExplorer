building
buildSearchBar: aBuilder
	
	^ aBuilder pluggableTextSpec new
		model: self;
		help: self class searchBarHelpText;
		editText: #updateSearchList:;
		indicateUnacceptedChanges: false;
		frame: (LayoutFrame new
			leftFraction: 0;
			topFraction: 0;
			rightFraction: 0.9;
			bottomFraction: self class searchButtonFractionHeight;
			yourself);
		yourself