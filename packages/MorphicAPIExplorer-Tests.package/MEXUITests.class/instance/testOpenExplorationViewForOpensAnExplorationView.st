tests
testOpenExplorationViewForOpensAnExplorationView

	tool openExplorationViewFor: MEXCategory new.
	self assert: (self newMorphs anySatisfy: [:morph |
		(morph class canUnderstand: #model) 
			ifTrue:[morph model class = MEXToolExplorationView]])