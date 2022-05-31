initialize-release
initialize

	super initialize.
	
	self 
		name: 'defaultName';
		subMethods: OrderedCollection new;
		parameters: OrderedCollection new;
		dependencies: OrderedCollection new;
		inhibitors: OrderedCollection new;
		isSelected: false;
		isActiveDependee: false;
		isActiveInhibitor: false;
		isInhibited: false;
		category: MEXCategory new
