private - energy
isFullFlash: aStep

	^ self positions allSatisfy: [ :aPosition | (grid at: aPosition) flashedAtStep: aStep ]