running
testBackButtonOfExplorationViewLeadsToOverView
	
	| view openExplorationViews openOverViews |
	view := builder build: explorationView.
	view openInWorld.
	openExplorationViews := (self getOpenWindowsWithModel: MEXToolExplorationView) size.
	openOverViews := (self getOpenWindowsWithModel: MEXToolOverView) size.
	((view submorphs select: 
		[:aMorph| aMorph isKindOf: MEXPluggableButtonMorph])
		select: [:aMorph | aMorph label = 'Back']) first performAction.
	self assert: ((self getOpenWindowsWithModel: MEXToolExplorationView) size = (openExplorationViews - 1)).
	self assert: ((self getOpenWindowsWithModel: MEXToolOverView) size = (openOverViews + 1)).
	view abandon