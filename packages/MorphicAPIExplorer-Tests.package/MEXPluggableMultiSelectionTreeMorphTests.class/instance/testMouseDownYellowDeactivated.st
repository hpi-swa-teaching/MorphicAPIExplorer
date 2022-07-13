tests
testMouseDownYellowDeactivated

	|anEvent anEventPosition|
	
	anEventPosition:= (treeMorph scroller bounds origin + (1@1)).
	
	anEvent:= MEXMouseEvent new.
	anEvent 
		setPosition: anEventPosition;
		setHand: HandMorph new.

	treeMorph mouseDown: anEvent.
	
	Transcript show: treeMorph selectedMorphs.
	
	self assert: (treeMorph selectedMorphs isEmpty)