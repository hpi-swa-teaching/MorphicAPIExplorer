running
setUp

	preTestWindows := World submorphs.
	toolbuilder := ToolBuilder default.
	tool := MEXTool new.
	overView := MEXToolOverView new. 
	toolbuilder open: overView.
	explorationView := MEXToolExplorationView new
	
	