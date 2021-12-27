private
decode: aSignalPattern with: aMapping

	^ (aSignalPattern collect: [ :each | aMapping at: each ]) asOrderedCollection sort asArray