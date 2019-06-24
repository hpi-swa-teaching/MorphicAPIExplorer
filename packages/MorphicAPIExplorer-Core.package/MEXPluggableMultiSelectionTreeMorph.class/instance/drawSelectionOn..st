drawing
drawSelectionOn: aCanvas

	self selectedMorphs
		select: [:aSelectedMorph |
			(aSelectedMorph valueOfProperty: self class parentProperty) ifNotNil: [:aParent | aParent isExpanded]]
		thenDo: [:aMorph |
		aCanvas
			transformBy: scroller transform
			clippingTo: scroller innerBounds
			during: [:theCanvas | aMorph drawSelectionOn: theCanvas]
	]