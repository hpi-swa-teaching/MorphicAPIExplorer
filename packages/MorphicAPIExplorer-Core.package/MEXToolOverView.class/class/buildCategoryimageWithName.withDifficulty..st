building
buildCategoryimageWithName: aName withDifficulty: aDifficulty

	^((MEXScalableImageMorph 
			newWithImage: (MEXToolOverView categoryImages at: (aName asSymbol)) 
			havingExtent:  self defaultButtonImageExtent)
				addMorph: (TextMorph new 
								contents: aName, '
', aDifficulty;
								position: self defaultButtonImageExtent;
								textColor: (Color white - (PluggableButtonMorph new userInterfaceTheme color))*2;
								yourself))