building
buildCopyToClipboardButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Copy';
		action: #copyCodeToClipboard;
		frame: (LayoutFrame new
				leftFraction: 0.95 offset: 0;
				topFraction: 0.67 offset: 0;
				rightFraction: 1 offset: 0;
				bottomFraction: 0.72 offset: 0);
		yourself