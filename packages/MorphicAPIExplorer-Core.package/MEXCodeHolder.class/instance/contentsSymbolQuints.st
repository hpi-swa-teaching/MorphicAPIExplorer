accessing
contentsSymbolQuints

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