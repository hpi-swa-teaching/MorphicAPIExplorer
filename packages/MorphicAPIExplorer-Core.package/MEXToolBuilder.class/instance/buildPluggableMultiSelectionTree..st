widgets required
buildPluggableMultiSelectionTree: aSpec

	| widget |
	widget := self multiSelectionTreeClass new.
	self register: widget id: aSpec name.
	
	self
		setGeneralTreeAttributesFor: widget havingSpec: aSpec;
		setTreeItemAttributesFor: widget havingSpec: aSpec;
		setScrollBarsPoliciesFor: aSpec ofWidget: widget;
		setFrame: aSpec frame in: widget;
		setLayoutHintsFor: widget spec: aSpec.
	
	parent ifNotNil: [self add: widget to: parent].
	
	^ widget
	