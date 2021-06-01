accessing
icon

	^ self item subItems notEmpty
		ifTrue: [nil]
		ifFalse: [self item isSelected
			ifTrue: [MEXIcons checkmarkIcon]
			ifFalse: [MEXIcons blankIcon]]