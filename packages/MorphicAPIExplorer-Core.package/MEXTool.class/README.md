I'm the actual tool which can be opened by the user. By default I'm opening a MEXToolOverView as window from where the user can navigate to the MEXToolExplorationView.

I also contain a list of standardMorphs as part of my savedMorphs used in my morphplorer.
savedMorphs contains at the same time a Dictionary which maps a saved morph instance to a list of MEXMethods which are the selected methods for the saved morph.

My most important methods are
- MEXTool class>>open					to actually open the tool
- MEXTool>>changeViewTo:			to switch the current view

Classes that inherit from me should implement
- MEXTool>>buildChildrenWith:			to define which children specs should be built
- MEXTool class>>labelAddition			to define how the window should be labeled
			
