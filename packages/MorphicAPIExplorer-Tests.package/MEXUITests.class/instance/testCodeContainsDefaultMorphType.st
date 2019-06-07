tests
testCodeContainsDefaultMorphType

	"setting selected Method is missing"
	"| view code method |
	explorationView category: overView class categoryTransforming.	
	view := toolbuilder build: explorationView.
	method := nil.
	code := view submorphs first submorphs first textMorph.
	code contents: 'someText'.
	code := code contents string.
	self assert: (code includesSubstring: (explorationView category defaultMorph class name, #' new'))"