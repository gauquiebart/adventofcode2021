solving
outputValuesMatchingSize: aCollectionOfOutputValueSizes

	^ codeNumbers select: [ :outputValue | 
		  aCollectionOfOutputValueSizes anySatisfy: [ :each | 
			  each = outputValue size ] ]