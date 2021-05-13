initialize-release
initialize

	super initialize.
	
	self 
		name: 'defaultName';
		subMethods: OrderedCollection new;
		parameters: OrderedCollection new;
		dependencies: OrderedCollection new;
		isSelected: false