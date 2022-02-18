Class {
	#name : #GrabCard,
	#superclass : #Effect,
	#instVars : [
		'N'
	],
	#category : #'IngSoft2-Model'
}

{ #category : #'instance creation' }
GrabCard class >> withN: aNumber [
	
	^self new initializeWithN: aNumber.
]

{ #category : #'effect-application' }
GrabCard >> applyTo: aGame triggeredBy: aPlayer [

	aGame applyGrabCard: N toPlayer: aPlayer
]

{ #category : #initialization }
GrabCard >> initializeWithN: aNumber [
	
	N := aNumber.
]

{ #category : #'effect - invert' }
GrabCard >> reverseEffect [ 
	
	N := N * -1.
]
