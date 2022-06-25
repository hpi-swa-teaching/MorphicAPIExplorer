tests
testAddToOrRemoveFromSelectedMorphsDependingOn

	|morph testMethod|
	
	testMethod := treeMorph items first complexContents item.
	morph:= MEXListItemWrapper newWithMethod: testMethod havingModel: explorationView havingParent: nil.
	treeMorph selectedMorphs: OrderedCollection new.
	
	treeMorph addToOrRemoveFromSelectedMorphs: morph dependingOn: true.
	self assert: (treeMorph selectedMorphs anySatisfy: [:aListItemWrapper|(aListItemWrapper complexContents item name) = (morph item name)]).
	
	treeMorph addToOrRemoveFromSelectedMorphs: treeMorph selectedMorphs first dependingOn: false.	
	self assert: (treeMorph selectedMorphs isEmpty)
	
	
	
