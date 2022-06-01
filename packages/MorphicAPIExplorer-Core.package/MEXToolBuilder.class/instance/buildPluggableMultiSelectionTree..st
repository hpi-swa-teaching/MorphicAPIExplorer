widgets required
buildPluggableMultiSelectionTree: aSpec
	| widget |
	
	widget := self multiSelectionTreeClass new.
	widget 
		getRelatedSelector: aSpec findRelated;
		getInhibitingSelector: aSpec findInhibited;
		setStateOfRelatedSelector: aSpec setStateOfRelated;
		setStateOfInihibitingSelector: aSpec setStateOfInhibited;
		getHelpSelector: aSpec help.
	self
		register: widget id: aSpec name;
		initialize: widget with: aSpec.
	self parent ifNotNil: [self add: widget to: self parent].
	
	^ widget
	