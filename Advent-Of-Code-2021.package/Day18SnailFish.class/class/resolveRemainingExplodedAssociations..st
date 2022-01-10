solving - private
resolveRemainingExplodedAssociations: aNumber

	aNumber isNumber ifTrue: [ ^ aNumber ].
	aNumber isAssociation ifTrue: [ ^ aNumber key ].
	
	(((aNumber at: 1) isAssociation) and: [ (aNumber at: 2) isArray ]) ifTrue: 
		[ |resolvedRightPair|
			resolvedRightPair := (self resolveRemainingExplodedAssociations: (aNumber at: 2)). 
		
		^ { 
				(self resolveRemainingExplodedAssociations: (aNumber at: 1)) . 
				{ ((resolvedRightPair at: 1) + ((aNumber at: 1) value at: 2)) . (resolvedRightPair at: 2)  }			
				 } ].

	^ { 
		  (self resolveRemainingExplodedAssociations: (aNumber at: 1)).
		  (self resolveRemainingExplodedAssociations: (aNumber at: 2)) }