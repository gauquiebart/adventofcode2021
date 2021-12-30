accessing
totalNumberOfFlashesFor: aStepInterval

	^ ((aStepInterval collect: [ :aStep | self flashedAtStep: aStep ]) 
		   select: [ :flashed | flashed ]) size