tests
testCodeContainsSelectedMethod

	"setting selected Method is missing"
	"| view method code |
	explorationView category: overView class categoryTransforming.
	view := toolbuilder build: explorationView.
	code := view submorphs first submorphs first text string.
	self assert: (code includesSubString: (#gf))"