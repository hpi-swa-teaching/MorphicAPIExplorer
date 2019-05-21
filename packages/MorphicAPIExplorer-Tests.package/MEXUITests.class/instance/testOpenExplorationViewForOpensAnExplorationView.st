tests
testOpenExplorationViewForOpensAnExplorationView

	overView changeToExplorationViewFor: MEXCategory new.
	self assert: (self newMorphs anySatisfy: [:morph |
		(morph class canUnderstand: #model) 
			ifTrue: [morph model isKindOf: MEXToolExplorationView]])