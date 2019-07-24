updating
update: anAspect

	anAspect ifNil: [^ self].
	
	anAspect == self getSelectedSelector
		ifTrue: [self updateGetSelectedSelector. 
			^ self].
		
	anAspect == self setSelectedSelector
		ifTrue: [self updateSetSelectedSelector].

	super update: anAspect