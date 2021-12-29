private - energy
recordFlashed: aStep

	| flashedAtStep |
	flashedAtStep := self flashedAtStep: aStep.
	energyLevel = self minEnergyLevel ifTrue: [ flashes add: aStep ].
	^ flashedAtStep not and: (self flashedAtStep: aStep)