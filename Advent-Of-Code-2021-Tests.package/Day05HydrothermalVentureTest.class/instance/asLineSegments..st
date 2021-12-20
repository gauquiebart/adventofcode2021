converting
asLineSegments: rawInput

	^ (rawInput splitAt: 7) collect: [ :aRawLineSegment | 
		  | start end |
		  start := (aRawLineSegment at: 1) @ (aRawLineSegment at: 3).
		  end := (aRawLineSegment at: 5) @ (aRawLineSegment at: 7).
		  LineSegment from: start to: end ]