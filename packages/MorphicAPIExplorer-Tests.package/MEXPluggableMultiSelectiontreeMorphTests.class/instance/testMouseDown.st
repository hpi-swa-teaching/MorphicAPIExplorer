tests
testMouseDown

	|anEvent anEventPosition|
	
	anEventPosition:= (treeMorph scroller bounds origin + (1@1)).
	
	anEvent:= MEXMouseEvent new.
	anEvent 
		position: anEventPosition;
		setHand: HandMorph new;
		yourself.
	
	treeMorph mouseDown: anEvent.
	
	Transcript show: treeMorph selectedMorphs.
	
	self assert: (treeMorph selectedMorphs anySatisfy: [:anIndentingListItemMorph| anIndentingListItemMorph = (treeMorph itemFromPoint: anEvent position)])