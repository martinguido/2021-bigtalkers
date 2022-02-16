Class {
	#name : #Reversal,
	#superclass : #Permanent,
	#category : #'IngSoft2-Model'
}

{ #category : #'accessing - effect' }
Reversal >> effect [

	^ 0
]

{ #category : #'private - validations' }
Reversal >> playableBy: aPlayer on: aGame affecting: aSlot [

	(aSlot isCollection and: [ aSlot size > 1 ])
		ifTrue: [ Error signal: 'This card can only be played on 1 slot' ].
	aGame currentTurnPlayer ~= aPlayer
		ifTrue: [ Error
				signal: 'Players can only play permanent cards during their turn' ]
]
