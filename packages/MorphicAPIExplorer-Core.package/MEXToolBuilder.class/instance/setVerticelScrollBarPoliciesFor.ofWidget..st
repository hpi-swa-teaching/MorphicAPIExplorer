widgets required
setVerticelScrollBarPoliciesFor: aSpec ofWidget: aTreeMorph
	
	^ aSpec vScrollBarPolicy ifNotNil: [ :policy |
		policy caseOf: {
			[#always] -> [aTreeMorph alwaysShowVScrollBar].
			[#never] -> [aTreeMorph hideVScrollBarIndefinitely].
			[#whenNeeded] -> [aTreeMorph showVScrollBarOnlyWhenNeeded]
		}];
		yourself