Class {
	#name : #ActiveCardController,
	#superclass : #Object,
	#instVars : [
		'cardregistry'
	],
	#category : #'IngSoft2-Model'
}

{ #category : #'instance creation' }
ActiveCardController class >> forPlayers: somePlayers and: someSlots [

	^ self new initializeWith: somePlayers and: someSlots
]

{ #category : #'accessing - adding/removing' }
ActiveCardController >> add: aCard to: aTarget [

	| currCards |
	currCards := cardregistry at: aTarget.
	currCards add: aCard.
	cardregistry at: aTarget put: currCards
]

{ #category : #initialization }
ActiveCardController >> initializeWith: somePlayers and: someSlots [

	cardregistry := Dictionary new.
	somePlayers
		do: [ :player | cardregistry at: player put: OrderedCollection new ].
	someSlots giveSlots
		do: [ :slot | cardregistry at: slot put: OrderedCollection new ]
]

{ #category : #validations }
ActiveCardController >> isEmpty [

	| activeCards |
	activeCards := cardregistry
		inject: 0
		into: [ :prev :curr | prev + curr size ].
	^ activeCards < 1
]

{ #category : #'accessing -  effects' }
ActiveCardController >> playerRollModifier: aPlayer [

	| currCards |
	currCards := cardregistry at: aPlayer.
	^ currCards inject: 0 into: [ :prev :curr | prev + curr effect ]
]

{ #category : #'accessing - adding/removing' }
ActiveCardController >> remove: aCard from: aTarget [

	| currCards |
	currCards := cardregistry at: aTarget.
	currCards
		remove: aCard
		ifAbsent: [ Error signal: 'The player does not have that card' ]
]
