building
build: aBuilder

	^ {
		aBuilder pluggableButtonSpec new
		model: self;
		label: 'Test1';
		frame: (self specFrameAt: 1).
		aBuilder pluggableButtonSpec new
		model: self;
		label: 'Test2';
		frame: (self specFrameAt: 2).
		aBuilder pluggableButtonSpec new
		model: self;
		label: 'Test3';
		frame: (self specFrameAt: 3).
		aBuilder pluggableButtonSpec new
		model: self;
		label: 'Test4';
		frame: (self specFrameAt: 4).
		aBuilder pluggableButtonSpec new
		model: self;
		label: 'Test5';
		frame: (self specFrameAt: 5).
		aBuilder pluggableButtonSpec new
		model: self;
		label: 'Test6';
		frame: (self specFrameAt: 6)
	} asOrderedCollection