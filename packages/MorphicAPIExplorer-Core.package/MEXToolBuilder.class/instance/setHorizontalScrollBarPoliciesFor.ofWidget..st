widgets required
setHorizontalScrollBarPoliciesFor: aSpec ofWidget: aTreeMorph
	
	^ aSpec hScrollBarPolicy ifNotNil: [ :policy |
		policy caseOf: {
			[#always] -> [aTreeMorph alwaysShowHScrollBar].
			[#never] -> [aTreeMorph hideHScrollBarIndefinitely].
			[#whenNeeded] -> [aTreeMorph showHScrollBarOnlyWhenNeeded]
		}];
		yourself