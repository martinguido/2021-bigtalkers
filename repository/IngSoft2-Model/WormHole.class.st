Class {
	#name : #WormHole,
	#superclass : #Effect,
	#instVars : [
		'N'
	],
	#category : #'IngSoft2-Model'
}

{ #category : #'instance creation' }
WormHole class >> withStepsBackwards [

	^ self new initializeWithN: -4
]

{ #category : #'effect-application' }
WormHole >> applyTo: aGame triggeredBy: aPlayer [

	aGame applyWormHole: N toPlayer: aPlayer
]

{ #category : #initialization }
WormHole >> initializeWithN: aNumber [

	N := aNumber.
]

{ #category : #'effect - invert' }
WormHole >> reverseEffect [

	N := N * -1.
]
