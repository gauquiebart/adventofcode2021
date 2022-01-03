tests
testPuzzleB

	| rawPuzzleInput expandedRawPuzzleInput nodes edges topLeftNode bottomRightNode dijkstra pathWithLowestTotalRiskFromTopLeftToBottomRight lowestTotalRiskFromTopLeftToBottomRight |
	rawPuzzleInput := self rawPuzzleInput.

	expandedRawPuzzleInput := self expandRawInput: rawPuzzleInput.

	nodes := self parseNodes: expandedRawPuzzleInput.
	edges := self
		         parseHorizontalAndVerticalEdges: expandedRawPuzzleInput
		         usingNodes: nodes.

	topLeftNode := nodes min.
	bottomRightNode := nodes max.

	dijkstra := AIDijkstraWithHeap new.
	dijkstra nodes: nodes.
	dijkstra
		edges: edges
		from: [ :each | each first ]
		to: [ :each | each second ]
		weight: [ :each | each third ].

	pathWithLowestTotalRiskFromTopLeftToBottomRight := dijkstra
		                                                   runFrom:
		                                                   topLeftNode
		                                                   to:
		                                                   bottomRightNode.
	lowestTotalRiskFromTopLeftToBottomRight := (dijkstra findNode:
		                                            bottomRightNode)
		                                           pathDistance.

	self assert: lowestTotalRiskFromTopLeftToBottomRight equals: 487.
	
