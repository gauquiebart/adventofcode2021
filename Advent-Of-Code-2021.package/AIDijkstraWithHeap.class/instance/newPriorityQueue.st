instance creation
newPriorityQueue

	^ Heap sortBlock: [ :assoc1 :assoc2 | assoc1 value <= assoc2 value ]