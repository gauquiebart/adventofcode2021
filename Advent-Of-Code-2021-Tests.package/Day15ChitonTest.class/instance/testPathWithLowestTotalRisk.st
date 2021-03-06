tests
testPathWithLowestTotalRisk

	| rawTestInput nodes edges topLeftNode bottomRightNode shortestPath pathWithLowestTotalRiskFromTopLeftToBottomRight lowestTotalRiskFromTopLeftToBottomRight |
	rawTestInput := #( 1163751742 1381373672 2136511328 3694931569
	                   7463417111 1319128137 1359912421 3125421639
	                   1293138521 2311944581 ).

	nodes := self parseNodes: rawTestInput.
	edges := self
		         parseHorizontalAndVerticalEdges: rawTestInput
		         usingNodes: nodes.

	topLeftNode := nodes min.
	bottomRightNode := nodes max.

	shortestPath := AIDijkstraWithHeap new.
	shortestPath nodes: nodes.
	shortestPath
		edges: edges
		from: [ :each | each first ]
		to: [ :each | each second ]
		weight: [ :each | each third ].

	pathWithLowestTotalRiskFromTopLeftToBottomRight := shortestPath
		                                                   runFrom:
		                                                   topLeftNode
		                                                   to:
		                                                   bottomRightNode.
	lowestTotalRiskFromTopLeftToBottomRight := (shortestPath findNode:
		                                            bottomRightNode)
		                                           pathDistance.

	self assert: lowestTotalRiskFromTopLeftToBottomRight equals: 40