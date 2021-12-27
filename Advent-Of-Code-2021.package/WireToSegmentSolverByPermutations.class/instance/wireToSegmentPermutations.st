private
wireToSegmentPermutations

	^ (Array streamContents: [ :stream | 
		  #( $a $b $c $d $e $f $g ) permutationsDo: [ :each | 
			  stream nextPut: each copy ] ]) collect: [ :aPermutation |
		OrderedDictionary newFromKeys: ($a to: $g) andValues: aPermutation ].