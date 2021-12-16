as yet unclassified
countIncreasesForSlidingWindow: seaFloorDepths
	^ self countIncreases:
		  ((self asTriplets: seaFloorDepths) collect: [ :triplet | 
			   triplet reduce: [ :a :b :c | a + b + c ] ])