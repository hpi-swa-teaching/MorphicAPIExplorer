event handling
mouseUp: anEvent

    | clickedMorph highlightedMorph |
    clickedMorph := self itemFromPoint: anEvent position.
    highlightedMorph := self valueOfProperty: #highlightedMorph ifAbsent: [].
    self removeProperty: #highlightedMorph.

    ((self model okToChange not
            or: [clickedMorph isNil])
            or: [clickedMorph ~~ highlightedMorph])
        ifTrue: [highlightedMorph ifNotNil: [:aMorph | aMorph highlightForMouseDown: false].
            ^ self].

    "== OUR CODE BEGIN ==
    Reason for adaptation: Changed to our parameters for multiselection;
    Should only affect items which can't be expanded"
    clickedMorph complexContents hasContents 
        ifFalse: [(self selectedMorphs anySatisfy: [:aSelectedMorph | clickedMorph == aSelectedMorph])
            ifTrue: [self removeFromSelectedMorphs: clickedMorph]
            ifFalse: [self addToSelectedMorphs: clickedMorph]].
    "== OUR CODE END =="

    highlightedMorph highlightForMouseDown: false.
    anEvent hand newKeyboardFocus: self.
    Cursor normal show