widgets required
setScrollBarsPoliciesFor: aSpec ofWidget: aTreeMorph
	"Widget will use preference values if not overwritten."
	
	self
		setHorizontalScrollBarPoliciesFor: aSpec ofWidget: aTreeMorph;
		setVerticalScrollBarPoliciesFor: aSpec ofWidget: aTreeMorph.
		
	^ aSpec