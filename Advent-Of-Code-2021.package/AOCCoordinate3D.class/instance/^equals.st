comparing
= aPoint

	^ self species = aPoint species
		  ifTrue: [ 
		  x = aPoint x and: [ y = aPoint y and: [ z = aPoint z ] ] ]
		  ifFalse: [ false ]