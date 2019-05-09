tests
testClickOnOverViewButtonOpensAnExplorationView

	| specCollection view |
	overView categories: { MEXCategory new }.
	specCollection := overView buildChildrenWith: toolbuilder.
	view := specCollection first action value model.
	self assert: (view isKindOf: MEXToolExplorationView)