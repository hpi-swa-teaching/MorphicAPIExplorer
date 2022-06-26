tests
testNoteRemovalOfAll

	|firstmorph testCollection|
	
	firstmorph:= treeMorph items first.
	testCollection:= (OrderedCollection newFrom: (treeMorph items reject: [:aMorph| aMorph == firstmorph])).
	
	"treeMorph selectedMorphs: (OrderedCollection newFrom: treeMorph items)." "doesnt't work because the remove method in noteRemoveofAl"

	treeMorph noteRemovalOfAll: testCollection.
	
	self assert: ((treeMorph items size == 1) and: (treeMorph items anySatisfy: [:aMorph| aMorph == firstmorph])).
	"self assert: ((treeMorph selectedMorphs size == 1) and: (treeMorph selectedMorphs anySatisfy: [:aMorph| aMorph == firstmorph]))."
	
	
	