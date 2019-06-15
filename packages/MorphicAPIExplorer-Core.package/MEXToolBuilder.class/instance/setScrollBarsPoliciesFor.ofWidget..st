widgets required
setScrollBarsPoliciesFor: aSpec ofWidget: aTreeMorph
	"Override default scroll bar policies if needed. Widget will use preference values otherwise."
	
	self
		setHorizontalScrollBarPoliciesFor: aSpec ofWidget: aTreeMorph;
		setVerticelScrollBarPoliciesFor: aSpec ofWidget: aTreeMorph.
	
	^ aSpec