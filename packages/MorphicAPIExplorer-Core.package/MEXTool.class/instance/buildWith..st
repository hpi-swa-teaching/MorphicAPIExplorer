building
buildWith: aBuilder


|EvaluatedLabel|

(self class canUnderstand: #category) 
	ifTrue: [EvaluatedLabel := self category name] 
	ifFalse: [EvaluatedLabel := self class label].

	^ aBuilder build: (aBuilder pluggableWindowSpec new
			model: self;
			label: EvaluatedLabel;
			extent: self class defaultExtent;
			children: (self buildChildrenWith: aBuilder);
			yourself).

