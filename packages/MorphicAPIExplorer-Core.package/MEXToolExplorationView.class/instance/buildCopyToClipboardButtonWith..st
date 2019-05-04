building
buildCopyToClipboardButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Copy';
		action: #copyCodeToClipboard;
		frame: (LayoutFrame new
				leftFraction: 0.95;
				topFraction: 0.67;
				rightFraction: 1;
				bottomFraction: 0.72);
		yourself