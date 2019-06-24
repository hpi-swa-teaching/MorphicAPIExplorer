event handling
mouseUp: anEvent

	| clickedMorph highlightedMorph |
	clickedMorph := self itemFromPoint: anEvent position.
	highlightedMorph := self valueOfProperty: #highlightedMorph ifAbsent: [].
	self removeProperty: #highlightedMorph.

	((model okToChange not
			or: [clickedMorph isNil])
			or: [clickedMorph ~~ highlightedMorph])
		ifTrue: [
			highlightedMorph ifNotNil: [:m | m highlightForMouseDown: false].
			^ self
		].

		((self selectedMorphs anySatisfy: [:aMorph | clickedMorph == aMorph])
			and: [clickedMorph complexContents parent notNil]
			and: [autoDeselect isNil or: [autoDeselect]])
				ifTrue: [self removeFromSelectedMorphs: clickedMorph]
				ifFalse: [self addToSelectedMorphs: clickedMorph].

	highlightedMorph highlightForMouseDown: false.
	anEvent hand newKeyboardFocus: self.
	Cursor normal show.