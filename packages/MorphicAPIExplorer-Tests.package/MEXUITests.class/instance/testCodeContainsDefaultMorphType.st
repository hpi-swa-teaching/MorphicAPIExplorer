tests
testCodeContainsDefaultMorphType

	| view code |
	explorationView category: overView class categoryTransforming.	
	view := toolbuilder build: explorationView.
	code := view submorphs first submorphs first textMorph.
	code := code contents string.
	self assert: (code includesSubstring: (explorationView category defaultMorph class name, #' new'))