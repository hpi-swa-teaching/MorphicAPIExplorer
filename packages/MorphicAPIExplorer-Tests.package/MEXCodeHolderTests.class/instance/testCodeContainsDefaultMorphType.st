tests
testCodeContainsDefaultMorphType

	| code expectedMorph |
	expectedMorph := ImageMorph new.
	mexCodeHolder generateCodeFor: expectedMorph with: OrderedCollection new.
	code := mexCodeHolder contents.
	self assert: (code includesSubstring: expectedMorph class name)