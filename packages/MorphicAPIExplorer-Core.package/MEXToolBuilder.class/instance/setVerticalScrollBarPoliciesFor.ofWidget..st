widgets required
setVerticalScrollBarPoliciesFor: aSpec ofWidget: aTreeMorph
	
	^ aSpec vScrollBarPolicy ifNotNil: [:aPolicy |
		aPolicy caseOf: {
			[#always] -> [aTreeMorph alwaysShowVScrollBar].
			[#never] -> [aTreeMorph hideVScrollBarIndefinitely].
			[#whenNeeded] -> [aTreeMorph showVScrollBarOnlyWhenNeeded]}];
		yourself