widgets required
buildPluggableMultiSelectionTree: aSpec

	| widget |
	widget := self multiSelectionTreeClass new.
	self
		register: widget id: aSpec name;
		initialize: widget with: aSpec.
	self parent ifNotNil: [self add: widget to: self parent].
	
	^ widget
	