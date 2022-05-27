widget classes
windowClassFor: aSpec
	^aSpec multiWindowStyle
		caseOf:
		{	[nil]				->	[MEXPluggableSystemWindow].
			[#labelButton]	->	[PluggableSystemWindowWithLabelButton] }
		otherwise:				[PluggableSystemWindowWithLabelButton]