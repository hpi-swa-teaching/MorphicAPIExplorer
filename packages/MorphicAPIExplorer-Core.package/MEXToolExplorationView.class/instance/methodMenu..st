accessing
methodMenu: aMenu

	^ aMenu
		title: 'Morphs';
		add: 'Morph A' action: nil;
		add: 'Morph B' action: nil;
		add: 'Morph C' action: nil;
		yourself