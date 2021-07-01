updating
update: anAspect

	anAspect ifEmpty: [^ self].
	
	anAspect == self getSelectedSelector
		ifTrue: [self updateGetSelectedSelector. 
			^ self].
		
	anAspect == self setStateOfRelatedSelector
	ifTrue: [self updateSetStateOfRelatedSelector. 
		^ self].
		
	anAspect == self setSelectedSelector
		ifTrue: [self updateSetSelectedSelector.
			^ self].
		
	anAspect == self findRelatedSelector
		ifTrue: [self updateFindRelatedSelector.
			^ self].

	super update: anAspect