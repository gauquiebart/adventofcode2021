solving - private
findSpeedsIn: speeds matchingSteps: steps

	^ (speeds collect: [ :allSteps | 
		   allSteps select: [ :aStepAssoc | aStepAssoc key = steps ] ]) 
		  reject: [ :each | each isEmpty ]