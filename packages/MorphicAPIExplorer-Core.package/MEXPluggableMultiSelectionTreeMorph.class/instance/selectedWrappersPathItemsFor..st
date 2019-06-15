selection
selectedWrappersPathItemsFor: aListItemWrapper

	| wrapperPath |
	wrapperPath := aListItemWrapper
		ifNil: [#()]
		ifNotNil: [
			wrapperPath := {aListItemWrapper} asOrderedCollection.
			[wrapperPath last parent notNil]
				whileTrue: [wrapperPath addLast: wrapperPath last parent].
			wrapperPath
		].
		
	^ wrapperPath collect: [:aWrapper | aWrapper item]