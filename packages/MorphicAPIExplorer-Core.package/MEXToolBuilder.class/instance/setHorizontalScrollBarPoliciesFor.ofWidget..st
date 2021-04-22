widgets required
setHorizontalScrollBarPoliciesFor: aSpec ofWidget: aTreeMorph
	
	^ aSpec hScrollBarPolicy ifNotNil: [:aPolicy |
		aPolicy caseOf: {
			[#always] -> [aTreeMorph alwaysShowHScrollBar].
			[#never] -> [aTreeMorph hideHScrollBarIndefinitely].
			[#whenNeeded] -> [aTreeMorph showHScrollBarOnlyWhenNeeded]}];
		yourself