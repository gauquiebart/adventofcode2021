accessing
flashedAtStep: aStep

	^ flashes anySatisfy: [:each | each = aStep]