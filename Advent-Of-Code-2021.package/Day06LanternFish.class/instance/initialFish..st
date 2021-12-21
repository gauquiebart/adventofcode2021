as yet unclassified
initialFish: aCollectionOfLanternFishesNumbers

	lanternFishes := OrderedCollection new.
	1 to: 9 do: [ :index | lanternFishes add: 0 ].
	aCollectionOfLanternFishesNumbers do: [ :aFish | 
		lanternFishes at: aFish + 1 put: (lanternFishes at: aFish + 1) + 1 ]