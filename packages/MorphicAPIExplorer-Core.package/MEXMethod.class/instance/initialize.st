initialize-release
initialize

	super initialize.
	
	self 
		name: 'defaultName';
		subMethods: OrderedCollection new;
		parameters: OrderedCollection new;
		category: MEXCategory new;
		isSelected: false