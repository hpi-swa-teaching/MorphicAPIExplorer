building
buildChildrenWith: aBuilder

	^self categories collect: [:category | 
		aBuilder pluggableButtonSpec new
			model: self;
			label: category name;
			action: [self changeToExplorationViewFor: category];
			frame: (self specFrameAt: (self categories indexOf: category) for: self class numberOfRows)]