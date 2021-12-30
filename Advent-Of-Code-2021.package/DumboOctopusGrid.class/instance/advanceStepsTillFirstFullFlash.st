energy
advanceStepsTillFirstFullFlash

	^ self infiniteSteps detect: [ :aStep | 
		self advanceStep: aStep.
		self isFullFlash: aStep]