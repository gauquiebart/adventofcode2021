tests
testPathWithLowestTotalRiskForEntireCave

	| rawTestInput expandedRawTestInput nodes edges topLeftNode bottomRightNode dijkstra pathWithLowestTotalRiskFromTopLeftToBottomRight lowestTotalRiskFromTopLeftToBottomRight |
	rawTestInput := #( 1163751742 1381373672 2136511328 3694931569
	                   7463417111 1319128137 1359912421 3125421639
	                   1293138521 2311944581 ).

	expandedRawTestInput := self expandRawTestInput: rawTestInput.

	nodes := self parseNodes: expandedRawTestInput.
	edges := self
		         parseHorizontalAndVerticalEdges: expandedRawTestInput
		         usingNodes: nodes.

	topLeftNode := nodes min.
	bottomRightNode := nodes max.

	dijkstra := AIDijkstra new.
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

	self assert: lowestTotalRiskFromTopLeftToBottomRight equals: 315.