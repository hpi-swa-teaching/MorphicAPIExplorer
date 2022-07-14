tests
testBackButtonReturnsIdenticalOverviewWindowToPreviousOverviewWindow

	|overViewWindow newOverViewWindow explorationViewWindow buttonMorph|
	overViewWindow := builder build: overView.
	overViewWindow openInWorld.
	buttonMorph := overViewWindow submorphs at: 4.
	buttonMorph performAction.
	
	explorationViewWindow := (self getOpenWindowsWithModel: MEXToolExplorationView) first.
	((explorationViewWindow submorphs select: 
		[:aMorph| aMorph isKindOf: MEXPluggableButtonMorph])
		select: [:aMorph | aMorph label = 'Back']) first performAction.
		
	newOverViewWindow := (self getOpenWindowsWithModel: MEXToolOverView) first.
	self assert: overViewWindow = newOverViewWindow.
	self assert: overViewWindow isNil not. 
	