widgets required
buildPluggableMultiSelectionTree: aSpec

	| widget |
	widget := self multiSelectionTreeClass new.
	self register: widget id: aSpec name.
	
	widget 
		"Set the general attributes applied for the tree"
		model: aSpec model;
		getSelectedPathsSelector: aSpec getSelectedPaths;
		setSelectedPathsSelector: aSpec setSelectedPaths;
		setSelectedSelector: aSpec setSelectionList;
		getSelectedSelector: aSpec getSelectionList;
		setSelectedParentsSelector: aSpec setSelectedParents;
		columns: aSpec columns;
		"Set the attributes which should be applied for every item individually"
		getChildrenSelector: aSpec getChildren;
		hasChildrenSelector: aSpec hasChildren;
		getLabelSelector: aSpec label;
		getIconSelector: aSpec icon;
		getHelpSelector: aSpec help;
		getMenuSelector: aSpec menu;
		keystrokeActionSelector: aSpec keyPress;
		nodeClass: aSpec nodeClass;
		getRootsSelector: aSpec roots;
		autoDeselect: aSpec autoDeselect;
		doubleClickSelector: aSpec doubleClick;
		"Set general drag and drop attributes"
		dropItemsSelector: aSpec dropItems;
		wantsDropSelector: aSpec dropAccept;
		dragItemsSelector: aSpec dragItems;
		dragStartedSelector: aSpec dragStarted.

	"Override default scroll bar policies if needed. Widget will use preference values otherwise."
	aSpec hScrollBarPolicy ifNotNil: [:policy |
		policy caseOf: {
			[#always] -> [widget alwaysShowHScrollBar].
			[#never] -> [widget hideHScrollBarIndefinitely].
			[#whenNeeded] -> [widget showHScrollBarOnlyWhenNeeded]. } ].
	aSpec vScrollBarPolicy ifNotNil: [:policy |
		policy caseOf: {
			[#always] -> [widget alwaysShowVScrollBar].
			[#never] -> [widget hideVScrollBarIndefinitely].
			[#whenNeeded] -> [widget showVScrollBarOnlyWhenNeeded]. } ].	
	
	self 
		setFrame: aSpec frame in: widget;
		setLayoutHintsFor: widget spec: aSpec.
	
	parent ifNotNil: [self add: widget to: parent].
	
	^ widget
	