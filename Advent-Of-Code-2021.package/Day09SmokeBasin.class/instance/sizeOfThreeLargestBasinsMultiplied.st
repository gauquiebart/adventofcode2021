solving
sizeOfThreeLargestBasinsMultiplied

	| basins basinSizesLargeToSmall |
	basins := self lowPoints collect: [ :lowPoint | self basinOf: lowPoint ].
	basinSizesLargeToSmall := (basins collect: #size) sort reversed.

	^ basinSizesLargeToSmall first * basinSizesLargeToSmall second * basinSizesLargeToSmall third