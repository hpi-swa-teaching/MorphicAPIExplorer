accessing
icon

	^ self item isSelected
		ifTrue: [MEXIcons checkmarkIcon]
		ifFalse: [MEXIcons blankIcon]