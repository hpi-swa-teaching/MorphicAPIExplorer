building
buildSearchBar: aBuilder
	
	^ aBuilder pluggableTextSpec new
		model: self;
		"getText: #;"
		editText: #updateSearchList:;
		frame: (LayoutFrame new
			leftFraction: 0;
			topFraction: 0;
			rightFraction: 1;
			bottomFraction: self class searchButtonFractionHeight;
			yourself);
		yourself