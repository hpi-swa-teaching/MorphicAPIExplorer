building
buildWith: aBuilder


|evaluatedLabel|

(self class canUnderstand: #category) 
	ifTrue: [evaluatedLabel := self category name] 
	ifFalse: [evaluatedLabel := self class label].

	^ aBuilder build: (aBuilder pluggableWindowSpec new
			model: self;
			label: evaluatedLabel;
			extent: self class defaultExtent;
			children: (self buildChildrenWith: aBuilder);
			yourself).

