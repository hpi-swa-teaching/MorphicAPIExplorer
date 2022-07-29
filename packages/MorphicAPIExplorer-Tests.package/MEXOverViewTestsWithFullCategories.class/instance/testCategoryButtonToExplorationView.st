tests
testCategoryButtonToExplorationView

	| view openExplorationViews|
	view := builder build: overView.
	view openInWorld.
	openExplorationViews := (self getOpenWindowsWithModel: MEXToolExplorationView) size.
	((view submorphs select: [:aMorph | 
		aMorph isKindOf: MEXPluggableButtonMorph])
		select: [:aMorph | aMorph label isKindOf: MEXScalableImageMorph]) second performAction. 
	self assert: (self getOpenWindowsWithModel: MEXToolExplorationView) size equals: (openExplorationViews + 1).
	view abandon
