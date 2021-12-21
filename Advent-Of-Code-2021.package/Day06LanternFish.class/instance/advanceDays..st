as yet unclassified
advanceDays: aNumberOfDays

	1 to: aNumberOfDays do: [ :index | 
		lanternFishes add: lanternFishes first.
		lanternFishes removeFirst.

		lanternFishes
			at: 7
			put: (lanternFishes at: 7) + (lanternFishes at: 9) ].
	^ lanternFishes sum