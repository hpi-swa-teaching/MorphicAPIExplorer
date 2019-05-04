building
buildChildrenWith: aBuilder

	^self categories collect: [:category | 
		aBuilder pluggableButtonSpec new
			model: self;
			label: category name;
			action: [self openExplorationViewFor: category];
			frame: (self specFrameAt: (self categories indexOf: category))]