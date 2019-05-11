tests
testClickOnOverViewButtonOpensAnExplorationView

	| specCollection view |
	overView categories: MEXCategory new asOrderedCollection.
	specCollection := overView buildChildrenWith: toolbuilder.
	view := specCollection first action value model.
	self assert: (view isKindOf: MEXToolExplorationView)