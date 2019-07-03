drawing
drawSelectionOn: aCanvas

	self selectedMorphs do: [:aMorph |
		aCanvas
			transformBy: scroller transform
			clippingTo: scroller innerBounds
			during: [:theCanvas | aMorph drawSelectionOn: theCanvas]]