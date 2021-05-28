as yet unclassified
buildSearchbarResults: aBuilder

^ aBuilder pluggablePanelSpec new
		model: self;
		children: #searchbarResultsMorph;
		frame: (LayoutFrame new
			leftFraction: 0;
			topFraction: self class searchbarFractionHeight;
			rightFraction: 1;
			bottomFraction: 0.5);
		yourself 
