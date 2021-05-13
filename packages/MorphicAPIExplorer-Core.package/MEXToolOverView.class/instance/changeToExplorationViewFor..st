ui
changeToExplorationViewFor: aMEXCategory

	| newView |
	"self defaultMorphs isEmpty ifTrue: [self defaultMorphs at: aMEXCategory defaultMorph put: OrderedCollection new]."
	newView := MEXToolExplorationView newFromCategory: aMEXCategory withDefaultMorphs: self defaultMorphs.
	self changeViewTo: (MEXToolBuilder open: newView)