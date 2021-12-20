as yet unclassified
advanceDay

	| newlyBornLanternFish updatedLanternFishes |
	newlyBornLanternFish := OrderedCollection new.
	updatedLanternFishes := lanternFishes collect: [ :aLanternFish | 
		                        aLanternFish isZero
			                        ifTrue: [ 
				                        newlyBornLanternFish add: 8.
				                        6 ]
			                        ifFalse: [ aLanternFish - 1 ] ].

	updatedLanternFishes addAll: newlyBornLanternFish.
	
	lanternFishes := updatedLanternFishes.

	^ updatedLanternFishes