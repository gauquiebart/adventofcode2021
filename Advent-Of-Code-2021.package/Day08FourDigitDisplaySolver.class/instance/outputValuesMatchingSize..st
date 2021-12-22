as yet unclassified
outputValuesMatchingSize: aCollectionOfOutputValueSizes

	^ outputValues select: [ :outputValue | 
		  aCollectionOfOutputValueSizes anySatisfy: [ :each | 
			  each = outputValue size ] ]