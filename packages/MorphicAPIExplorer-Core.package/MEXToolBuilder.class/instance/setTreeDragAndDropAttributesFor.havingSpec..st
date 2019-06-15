widgets required
setTreeDragAndDropAttributesFor: aTreeMorph havingSpec: aSpec

	^ aTreeMorph
		dropItemsSelector: aSpec dropItems;
		wantsDropSelector: aSpec dropAccept;
		dragItemsSelector: aSpec dragItems;
		dragStartedSelector: aSpec dragStarted;
		yourself