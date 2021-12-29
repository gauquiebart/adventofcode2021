initialization
gridOfEnergyLevels: anEnergyLevelGrid

	grid := OrderedDictionary new.
	anEnergyLevelGrid doWithIndex: [ :row :x | 
		row doWithIndex: [ :energyLevel :y | grid at: x @ y put: (DumboOctopus new energyLevel: energyLevel ) ] ]