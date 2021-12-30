private - energy
advanceStep: aStep forPositions: positions

	positions isEmpty
		ifTrue: [ ^ self ]
		ifFalse: [ 
			| positionsFlashed |
			positionsFlashed := positions select: [ :position | 
				                    | flashed |
				                    flashed := (grid at: position) 
					                               increaseEnergyLevelOnStep: aStep.
				                    flashed ].
			self
				advanceStep: aStep
				forPositions: (positionsFlashed flatCollect: [ :each | 
						 self adjacentPositionsTo: each ]) ]