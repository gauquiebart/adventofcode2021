solving
fold: initialDots withInstructions: foldInstructions

	^ foldInstructions
		  inject: initialDots
		  into: [ :dots :anInstruction | 
			  anInstruction key = #x ifTrue: [ 
				  self fold: dots leftAtX: anInstruction value ]
					ifFalse: [ self fold: dots upAtY: anInstruction value ] ]