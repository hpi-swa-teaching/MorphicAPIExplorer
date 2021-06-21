building
buildSearchButton: aBuilder
	
	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Search On/Off';
		action: #toggleSearchList;
		frame: (LayoutFrame new
			leftFraction: 0;
			topFraction: 0;
			rightFraction: 1;
			bottomFraction: self class searchButtonFractionHeight;
			yourself);
		yourself