event handling
mouseDown: anEvent

	| aMorph selectors |
	aMorph := self itemFromPoint: anEvent position.
	
	"First check for option (menu) click"
	anEvent yellowButtonPressed
		ifTrue: [
			(PluggableListMorph menuRequestUpdatesSelection and: [ model okToChange])
				ifTrue: [
					"Changed stuff here"
					(self selectedMorphs anySatisfy: [ :selectedMorph | aMorph == selectedMorph])
						ifTrue: [self removeFromSelectedMorphs: aMorph]
						ifFalse: [self addToSelectedMorphs: aMorph]
				].
				^ self yellowButtonActivity: anEvent shiftPressed
		].
	(aMorph notNil and: [ aMorph inToggleArea: (aMorph point: anEvent position from: self)])
		ifTrue: [^ self toggleExpandedState: aMorph event: anEvent].
	aMorph ifNil: [^ super mouseDown: anEvent].
	
	aMorph highlightForMouseDown.
	self setProperty: #highlightedMorph toValue: aMorph.

	selectors := Array
		with: #click:
		with: (self doubleClickEnabled ifTrue: [#doubleClick:] ifFalse: [nil])
		with: nil
		with: (self dragEnabled ifTrue: [#startDrag:] ifFalse: [nil]).
	anEvent hand waitForClicksOrDrag: self event: anEvent selectors: selectors threshold: HandMorph dragThreshold