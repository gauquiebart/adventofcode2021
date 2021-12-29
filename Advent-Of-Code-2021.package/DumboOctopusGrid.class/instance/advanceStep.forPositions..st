private - energy
advanceStep: aStep forPositions: positions

	positions isEmpty
		ifTrue: [ ^ self ]
		ifFalse: [ 
			| positionsFlashed |
			positionsFlashed := OrderedCollection new.

			positions do: [ :position | 
				| flashed |
				flashed := (grid at: position) increaseEnergyLevelOnStep: aStep.
				flashed ifTrue: [ positionsFlashed add: position ] ].

			self
				advanceStep: aStep
				forPositions: (positionsFlashed flatCollect: [ :each | 
						 self adjacentPositionsTo: each ]) ]