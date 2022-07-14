tests
testAbandonMethodWorks

	| view abandonCode|
	abandonCode :=		'| morph |
									morph := Morph new.
									morph openInWorld: playground.
									morph center: playground center.	
									morph abandon.'.

	view := builder build: explorationView.
	view model evaluateCode: abandonCode. 
	self assert: view model playground submorphs isEmpty. 