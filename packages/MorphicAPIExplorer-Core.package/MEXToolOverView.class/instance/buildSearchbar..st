as yet unclassified
buildSearchbar: aBuilder

	^ aBuilder pluggableTextSpec new
		model: self;
		editText: #searchbarText:;
		frame: (LayoutFrame new
			leftFraction: 0;
			topFraction: 0;
			rightFraction: 1;
			bottomFraction: self class searchbarFractionHeight);
		yourself 