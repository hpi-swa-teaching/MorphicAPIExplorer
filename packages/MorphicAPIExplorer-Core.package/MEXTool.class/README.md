I'm the actual tool which can be opened from the user. By default I'm opening a MEXToolOverView as window from where the user can navigate to the MEXToolExplorationView.

My most important methods are
- MEXTool class>>open					to actually open the tool
- MEXTool>>changeViewTo:			to switch the current view

Classes that inherit from me should implement
- MEXTool>>buildChildrenWith:			to define which children specs should be built
- MEXTool class>>labelAddition			to define how the window should be labeled