tests
testCategoryButtonToExplorationView

	| view openExplorationViews openOverViews |
	view := builder build: overView.
	view openInWorld.
	openExplorationViews := (self getOpenWindowsWithModel: MEXToolExplorationView) size.
	openOverViews := (self getOpenWindowsWithModel: MEXToolOverView) size.
	((view submorphs select: [:each | each isKindOf: MEXPluggableButtonMorph]) select: [:each | each label isKindOf: MEXScalableImageMorph]) first performAction.
	self assert: ((self getOpenWindowsWithModel: MEXToolExplorationView) size = (openExplorationViews + 1)).
	self assert: ((self getOpenWindowsWithModel: MEXToolOverView) size = (openOverViews - 1))