widgets required
initialize: aWidget with: aSpec

	self
		setGeneralTreeAttributesFor: aWidget havingSpec: aSpec;
		setTreeItemAttributesFor: aWidget havingSpec: aSpec;
		setScrollBarsPoliciesFor: aSpec ofWidget: aWidget;
		setFrame: aSpec frame in: aWidget;
		setLayoutHintsFor: aWidget spec: aSpec