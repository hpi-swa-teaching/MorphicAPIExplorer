building
buildWith: aBuilder

	^ aBuilder build: (aBuilder pluggableWindowSpec new
			model: self;
			label: self class label;
			extent: self class defaultExtent;
			children: (self buildChildrenWith: aBuilder);
			yourself)