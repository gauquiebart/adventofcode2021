helper
parseHorizontalAndVerticalEdges: rawInput usingNodes: nodes

	^	nodes flatCollect: [ :node |
		(self horizontalAndVerticalNeighboursOf: node in: nodes) collect: [ :eachNeighbour |
			|from to weight|
			from := node.
			to := eachNeighbour.
			weight := (((rawInput at: to y) asString) at: to x) digitValue.
			{ from . to . weight }.
			 ]].