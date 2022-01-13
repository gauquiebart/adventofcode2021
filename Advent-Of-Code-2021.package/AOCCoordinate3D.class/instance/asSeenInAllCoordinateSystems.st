arithmetic
asSeenInAllCoordinateSystems

	^ self fullyMirrored flatCollectAsSet: [ :eachMirrored | 
		  eachMirrored fullyRotatedAroundXY flatCollectAsSet: [ :eachXYRot | 
			  eachXYRot fullyRotatedAroundXZ flatCollectAsSet: [ :eachXZRot | 
				  eachXZRot fullyRotatedAroundXY ] ] ]