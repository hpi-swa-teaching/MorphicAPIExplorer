updating
update: anAspect

	anAspect ifNil: [^ self].
	
	anAspect == self getSelectedSelector
		ifTrue: [self items do: [:anItem | self model perform: self getSelectedSelector with: anItem].
			^ self].
		
	anAspect == self setSelectedSelector
		ifTrue: [self items do: [:anItem | self model perform: self setSelectedSelector with: anItem with: anItem isSelected]].

	super update: anAspect