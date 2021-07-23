tests
testOpenExplorationViewForOpensAnExplorationView

	overView changeToExplorationViewFor: MEXCategory new.
	self assert: (self newMorphs anySatisfy: [:aMorph |
		(aMorph class canUnderstand: #model) 
			ifTrue: [aMorph model isKindOf: MEXToolExplorationView]])