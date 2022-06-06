initialize-release
defaultContentsSymbolQuints
	"Default list of quintuplets representing information on the alternative views available in the code pane
		first element:	the contentsSymbol used
		second element:	the selector to call when this item is chosen.
		third element:	the selector to call to obtain the wording of the menu item.
		fourth element:	the wording to represent this view
		fifth element:	balloon help
	A hypen indicates a need for a seperator line in a menu of such choices"

	^ {
		{#source
			. #togglePlainSource 
			. #showingPlainSourceString 
			. 'source'
			. 'the textual source code as written' translated} .


		#- .
		{#prettyPrint
			. #togglePrettyPrint
			. #prettyPrintString
			. 'prettyPrint'
			. 'the method source presented in a standard text format' translated} .

	
	}