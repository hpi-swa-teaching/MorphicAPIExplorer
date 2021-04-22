accessing
icon

	^ self item hasSubMethods
		ifTrue: [nil]
		ifFalse: [self item isSelected
			ifTrue: [MEXIcons checkmarkIcon]
			ifFalse: [MEXIcons blankIcon]]