building
buildChildrenWith: aBuilder
		
 	^ (self categories collect: [:aCategory | 
		aBuilder pluggableButtonSpec new
			model: self;
			label: aCategory image;
			action: [self changeToExplorationViewFor: aCategory];
			frame: (self specFrameAt: (self categories indexOf: aCategory) for: self class numberOfRows)]) asOrderedCollection
			addAll: {self buildSearchBar: aBuilder . self buildHelpButton: aBuilder withLayout: self class helpButtonLayout. self buildSearchList: aBuilder};
			yourself