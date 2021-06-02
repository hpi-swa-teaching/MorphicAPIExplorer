updating
update: anAspect

	anAspect ifNil: [^ self].
	
	anAspect == self getSelectedSelector
		ifTrue: [self updateGetSelectedSelector. 
			^ self].
		
	anAspect == self setSelectedSelector
		ifTrue: [self updateSetSelectedSelector.
			^ self].
		
	anAspect == self getRelatedSelector
		ifTrue: [self updateGetRelatedSelector.
			^ self].

	super update: anAspect