initialize-release
initialize

	super initialize.
	self name: 'defaultName';
		subMethods: OrderedCollection new;
		isSelected: false