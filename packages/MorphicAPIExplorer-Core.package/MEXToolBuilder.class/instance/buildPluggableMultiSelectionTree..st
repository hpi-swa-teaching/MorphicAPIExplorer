widgets required
buildPluggableMultiSelectionTree: aSpec

	| widget |
	widget := self multiSelectionTreeClass new.
	widget 
		findRelatedSelector: aSpec findRelated;
		setStateOfRelatedSelector: aSpec setStateOfRelated;
		getHelpSelector: aSpec help.
	self
		register: widget id: aSpec name;
		initialize: widget with: aSpec.
	self parent ifNotNil: [self add: widget to: self parent].
	
	^ widget
	