accessing
icon

	^ ToolIcons iconNamed: (self item isSelected
		ifTrue: [#checkmarkIcon]
		ifFalse: [#blankIcon])