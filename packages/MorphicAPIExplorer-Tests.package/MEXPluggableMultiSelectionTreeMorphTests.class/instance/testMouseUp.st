tests
testMouseUp

	|anEvent anEventPosition clickedMorph|
	
	anEventPosition:= (treeMorph scroller bounds origin + (1@1)).
	
	anEvent:= MEXMouseEvent new.
	anEvent 
		setPosition: anEventPosition;
		setHand: HandMorph new;
		yourself.
		
	clickedMorph:= treeMorph itemFromPoint: anEvent position.
	treeMorph setProperty: #highlightedMorph toValue: clickedMorph.
	
	
	treeMorph selectedMorphs: OrderedCollection new.
	treeMorph mouseUp: anEvent.
	self assert: (treeMorph selectedMorphs anySatisfy: [:anIndentingListItem|anIndentingListItem == clickedMorph]).
	
	treeMorph setProperty: #highlightedMorph toValue: clickedMorph.
	treeMorph mouseUp: anEvent.
	self assert: (treeMorph selectedMorphs isEmpty).
	
	
	
	
