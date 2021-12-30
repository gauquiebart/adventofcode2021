as yet unclassified
countIncreasesForSlidingWindow: seaFloorDepths

	^ self countIncreases:
		  (seaFloorDepths asTriplets collect: [ :triplet | 
			   triplet reduce: [ :a :b :c | a + b + c ] ])