building
buildCopyToClipboardButtonWith: aBuilder

	^ aBuilder pluggableButtonSpec new
		model: self;
		label: 'Copy';
		action: #copyCodeToClipboard;
		frame: (LayoutFrame new
				leftFraction: 0.95;
				topFraction: self class bottomSpecsDistribution x;
				rightFraction: self class rightSpecsDistribution y;
				bottomFraction: self class bottomSpecsDistribution x offset: 30);
		yourself