tests
testNoteRemovalOfAll

	|firstMorph testCollection|
	
	firstMorph := treeMorph items first.
	testCollection := (OrderedCollection newFrom: (treeMorph items reject: [:aMorph| aMorph == firstMorph])).
	

	treeMorph noteRemovalOfAll: testCollection.
	
	self assert: ((treeMorph items size == 1) and: (treeMorph items anySatisfy: [:aMorph| aMorph == firstMorph])).
	
	
	