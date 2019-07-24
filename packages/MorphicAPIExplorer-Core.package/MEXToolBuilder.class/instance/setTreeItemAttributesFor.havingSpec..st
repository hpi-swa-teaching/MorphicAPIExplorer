widgets required
setTreeItemAttributesFor: aTreeMorph havingSpec: aSpec
	"Set the attributes which should be applied for every item individually"

	^ aTreeMorph
		getChildrenSelector: aSpec getChildren;
		hasChildrenSelector: aSpec hasChildren;
		getLabelSelector: aSpec label;
		getIconSelector: aSpec icon;
		getHelpSelector: aSpec help;
		getMenuSelector: aSpec menu;
		keystrokeActionSelector: aSpec keyPress;
		nodeClass: aSpec nodeClass;
		getRootsSelector: aSpec roots;
		yourself